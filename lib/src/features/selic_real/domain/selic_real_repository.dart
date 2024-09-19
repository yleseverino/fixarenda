import 'dart:math';

import 'package:fixarenda/src/database/app_remote_config.dart';
import 'package:fixarenda/src/features/selic_real/data/local/selic_real_dao.dart';
import 'package:fixarenda/src/features/selic_real/data/remote/selic_real_retrofit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class SelicRealRepository {
  SelicRealRepository({
    required SelicRealDao selicDao,
    required SelicRealRetrofit selicRealRetrofit,
    required AppRemoteConfig appRemoteConfig,
  })  : _selicDao = selicDao,
        _selicRealRetrofit = selicRealRetrofit,
        _appRemoteConfig = appRemoteConfig;

  final SelicRealDao _selicDao;
  final SelicRealRetrofit _selicRealRetrofit;
  final AppRemoteConfig _appRemoteConfig;

  Future<void> syncDatabase() async {
    final lastSelic = await _selicDao.getLastDate();
    final lastDateSelic =
        lastSelic?.date ?? _appRemoteConfig.lowestDateHasSelicRate;

    final today = DateTime.now();
    final formatDate = DateFormat('dd/MM/yyyy');

    final selicRemote = await _selicRealRetrofit.getSelicFromCentralBank(
      startDate: formatDate.format(lastDateSelic),
      endDate: formatDate.format(today),
    );

    final selicList =
        selicRemote.map((selicDto) => selicDto.toSelicEntity()).toList();

    await _selicDao.insertSelic(selicList);
  }

  Future<num?> getPercentageYieldFactor(
      {required DateTime startDate, DateTime? endDate}) async {
    final endDateValue = endDate ?? (await _selicDao.getLastDate())!.date;

    final avgSelic = await _selicDao.getAvgRateByPeriod(
      startDate,
      endDateValue,
    );

    if (avgSelic == null) {
      return null;
    }

    final countDays = await _selicDao.getCountDaysFromPeriod(
      startDate,
      endDateValue,
    );

    if (countDays == null) {
      return null;
    }

    return pow(1 + avgSelic, countDays);
  }
}

final selicRealRepositoryProvider = Provider<SelicRealRepository>((ref) {
  final selicDao = ref.watch(selicDaoProvider);
  final selicRemoteRepository = ref.watch(selicRealRetrofitProvider);
  final appRemoteConfig = ref.watch(appRemoteConfigProvider);

  return SelicRealRepository(
    selicDao: selicDao,
    selicRealRetrofit: selicRemoteRepository,
    appRemoteConfig: appRemoteConfig,
  );
});
