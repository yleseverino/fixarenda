import 'dart:async';

import 'package:fixarenda/src/database/app_remote_config.dart';
import 'package:fixarenda/src/database/database.dart';
import 'package:fixarenda/src/features/selic_bacen/data/local/selic_forecast_dao.dart';
import 'package:fixarenda/src/features/selic_bacen/data/local/selic_forecast_entity.dart';
import 'package:fixarenda/src/features/selic_bacen/data/meeting_entity.dart';
import 'package:fixarenda/src/features/selic_bacen/data/remote/selic_forecast_retrofit.dart';
import 'package:fixarenda/src/features/selic_bacen/domain/models/selic_forecast_model.dart';
import 'package:fixarenda/src/util/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class SelicForecastRepository {
  SelicForecastRepository({
    required SelicForecastDao selicForecastDao,
    required SelicForecastRetrofit selicForecastRetrofit,
    required Logger logger,
    required AppRemoteConfig appRemoteConfig,
  })  : _selicForecastDao = selicForecastDao,
        _selicForecastRetrofit = selicForecastRetrofit,
        _logger = logger,
        _appRemoteConfig = appRemoteConfig;

  final SelicForecastDao _selicForecastDao;
  final SelicForecastRetrofit _selicForecastRetrofit;
  final Logger _logger;
  final AppRemoteConfig _appRemoteConfig;

  MeetingEntity get nextMeeting => _appRemoteConfig.nextFocusMeeting.toEntity();

  Future<DateTime?> getLastForecastDate() async {
    try {
      final lastDate = await _selicForecastDao.getLastDate();

      if (lastDate == null) {
        return null;
      }

      return DateTime.parse(lastDate);
    } catch (error, stackTrace) {
      _logger.e(
        'Error getting last date from database',
        error: error,
        stackTrace: stackTrace,
      );

      return null;
    }
  }

  Future<List<SelicForecastEntity>> _getSelicForecastFromBacen({
    DateTime? lastDate,
  }) async {
    try {
      final forecastDto =
          await _selicForecastRetrofit.getSelicForecastFromBacen(
        filter: SelicForecastRetrofit.formatFilterDateGreaterThan(lastDate),
      );

      return forecastDto.value.map((e) => e.toEntity()).toList();
    } catch (error, stackTrace) {
      _logger.e(
        'Error getting forecast from bacen',
        error: error,
        stackTrace: stackTrace,
      );

      return [];
    }
  }

  Future<void> syncDataBase() async {
    _logger.i('Syncing forecast database');
    final lastDateSelic = await getLastForecastDate();

    final entityList = await _getSelicForecastFromBacen(
      lastDate: lastDateSelic,
    );

    _logger.i('Forecast from bacen: ${entityList.length}');

    if (entityList.isEmpty) {
      _logger.i('No forecast to sync');

      return;
    }

    await _selicForecastDao.replaceForecast(entityList);
  }

  Future<List<SelicForecastModel>> getSelicForecast() async {
    final listForecastEntities =
        await _selicForecastDao.getLastForecastByMeeting(nextMeeting);

    return listForecastEntities.map(SelicForecastModel.fromEntity).toList();
  }

  Future<double> getSelicAverageByMeetingNumber(int numberFutureMeeting) async {
    final averageRate = await _selicForecastDao.getSelicAverageBetweenMeetings(
      nextMeeting,
      nextMeeting.addMeeting(numberFutureMeeting),
    );

    if (averageRate == null) {
      return 0;
    }
    return averageRate / 100;
  }
}

final selicForecastRepositoryProvider =
    Provider<SelicForecastRepository>((ref) {
  final databaseProvider = ref.watch(appDatabaseProvider);
  final selicForecastRetrofit = ref.watch(selicForecastRetrofitProvider);
  final appRemoteConfig = ref.watch(appRemoteConfigProvider);
  final logger = ref.watch(loggerProvider);

  return SelicForecastRepository(
    selicForecastDao: databaseProvider.selicForecastDao,
    selicForecastRetrofit: selicForecastRetrofit,
    appRemoteConfig: appRemoteConfig,
    logger: logger,
  );
});

final forecastStateChangesProvider =
    FutureProvider.autoDispose<List<SelicForecastModel>>((ref) async {
  ref.watch(
    watchSyncDatabaseProvider,
  );

  final selicForecastRepository = ref.watch(selicForecastRepositoryProvider);

  return selicForecastRepository.getSelicForecast();
});
