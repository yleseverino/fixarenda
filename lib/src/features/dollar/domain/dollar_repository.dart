import 'package:fixarenda/src/database/app_remote_config.dart';
import 'package:fixarenda/src/features/dollar/data/local/dollar_dao.dart';
import 'package:fixarenda/src/features/dollar/data/remote/bacen/dollar_bacen_retrofit.dart';
import 'package:fixarenda/src/util/logger.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class DollarRepository {
  DollarRepository({
    required DollarBacenRetrofit dollarBacenRetrofit,
    required Logger logger,
    required DollarDao dollarDao,
    required AppRemoteConfig appRemoteConfig,
  })  : _dollarBacenRetrofit = dollarBacenRetrofit,
        _logger = logger,
        _dollarDao = dollarDao,
        _appRemoteConfig = appRemoteConfig;

  final DollarBacenRetrofit _dollarBacenRetrofit;
  final Logger _logger;
  final DollarDao _dollarDao;
  final AppRemoteConfig _appRemoteConfig;

  Future<DateTime> getLastDate() async {
    final dollarEntity = await _dollarDao.getLast();

    if (dollarEntity == null) {
      return _appRemoteConfig.lowestDateHasDollarValue;
    }

    return dollarEntity.date;
  }

  Future<double?> getDollarValue(DateTime date) async {
    final dollarEntity = await _dollarDao.getDollarByDate(date);

    if (dollarEntity == null) {
      return null;
    }

    return dollarEntity.value;
  }

  Future<void> syncDatabase() async {
    final dateStart = await getLastDate();
    final endDate = DateTime.now();

    final data = await _dollarBacenRetrofit.getDollarFromCentralBank(
      startDate: DollarBacenRetrofit.formatDateFilter(dateStart),
      endDate: DollarBacenRetrofit.formatDateFilter(endDate),
    );

    final dollarEntities = data.value
        .map((dollarRemoteModel) => dollarRemoteModel.toEntity())
        .toList();

    await _dollarDao.insert(dollarEntities);

    _logger.i(data);
  }
}

final dollarRepositoryProvider = Provider<DollarRepository>((ref) {
  final dollarBacenRetrofit = ref.watch(dollarBacenRetrofitProvider);
  final logger = ref.watch(loggerProvider);
  final dollarDao = ref.watch(dollarDaoProvider);
  final appRemoteConfig = ref.watch(appRemoteConfigProvider);

  return DollarRepository(
    dollarBacenRetrofit: dollarBacenRetrofit,
    logger: logger,
    dollarDao: dollarDao,
    appRemoteConfig: appRemoteConfig,
  );
});
