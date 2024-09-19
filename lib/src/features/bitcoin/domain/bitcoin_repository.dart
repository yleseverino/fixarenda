import 'package:fixarenda/src/database/app_remote_config.dart';
import 'package:fixarenda/src/features/bitcoin/data/local/bitcoin_dao.dart';
import 'package:fixarenda/src/features/bitcoin/data/remote/bitcoin_coingecko_retrofit.dart';
import 'package:fixarenda/src/util/datetime_extension.dart';
import 'package:fixarenda/src/util/logger.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class BitcoinRepository {
  BitcoinRepository(
      {required BitcoinDao bitcoinDao,
      required BitcoinCoinGeckoRetrofit coinGeckoRetrofit,
      required Logger logger,
      required AppRemoteConfig appRemoteConfig})
      : _bitcoinDao = bitcoinDao,
        _coinGeckoRetrofit = coinGeckoRetrofit,
        _logger = logger,
        _appRemoteConfig = appRemoteConfig;

  final BitcoinDao _bitcoinDao;
  final BitcoinCoinGeckoRetrofit _coinGeckoRetrofit;
  final Logger _logger;
  final AppRemoteConfig _appRemoteConfig;

  Future<DateTime> getLastDate() async {
    try {
      final lastDate = await _bitcoinDao.getLastDate();

      if (lastDate == null) {
        throw Exception('Last date is null');
      }

      return DateTime.parse(lastDate);
    } catch (error, stackTrace) {
      _logger.e(
        'Error getting last date from bitcoin table',
        error: error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  Future<void> syncDatabase() async {
    try {
      final lastDate = await getLastDate();

      final data = await _coinGeckoRetrofit.getBitcoinFromCoinGecko(
        id: 'bitcoin',
        from: lastDate.secondsSinceEpoch,
        to: DateTime.now().secondsSinceEpoch,
      );

      final listBitcoinEntities = data.bitcoinList
          .map(
            (remoteModel) => remoteModel.toEntity(),
          )
          .toList();

      if (listBitcoinEntities.isEmpty) {
        _logger.i('No forecast to sync');

        return;
      }

      await _bitcoinDao.insert(listBitcoinEntities);
    } catch (error, stackTrace) {
      _logger.e(
        'Error on sync bitcoin',
        error: error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}

final bitcoinRepositoryProvider = Provider<BitcoinRepository>((ref) {
  final bitcoinDao = ref.watch(bitcoinDaoProvider);
  final coinGeckoRetrofit = ref.watch(bitcoinCoinGeckoRetrofitProvider);
  final logger = ref.watch(loggerProvider);
  final appRemoteConfig = ref.watch(appRemoteConfigProvider);

  return BitcoinRepository(
    bitcoinDao: bitcoinDao,
    coinGeckoRetrofit: coinGeckoRetrofit,
    logger: logger,
    appRemoteConfig: appRemoteConfig,
  );
});
