import 'dart:async';

import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fixarenda/firebase_options.dart';
import 'package:fixarenda/main.dart';
import 'package:fixarenda/src/database/app_remote_config.dart';
import 'package:fixarenda/src/database/database.dart';
import 'package:fixarenda/src/features/bitcoin/data/remote/bitcoin_coingecko_retrofit.dart';
import 'package:fixarenda/src/features/bitcoin/domain/bitcoin_repository.dart';
import 'package:fixarenda/src/features/dollar/data/remote/bacen/dollar_bacen_retrofit.dart';
import 'package:fixarenda/src/features/dollar/domain/dollar_repository.dart';
import 'package:fixarenda/src/features/selic_bacen/data/remote/selic_forecast_retrofit.dart';
import 'package:fixarenda/src/features/selic_bacen/domain/selic_forecast_repository.dart';
import 'package:fixarenda/src/features/selic_real/data/remote/selic_real_retrofit.dart';
import 'package:fixarenda/src/features/selic_real/domain/selic_real_repository.dart';
import 'package:logger/logger.dart';
import 'package:workmanager/workmanager.dart';

class AppWorkManager {
  AppWorkManager._();

  static void callbackConfig() {
    /// This is the callback dispatcher that will be called by the Workmanager an sync the database
    Workmanager().executeTask((_, __) async {
      final logger = Logger();
      try {
        final dio = Dio();
        final selicForecastRetrofit = SelicForecastRetrofit(dio);
        final selicRealRetrofit = SelicRealRetrofit(dio);

        logger.i('Native called background task: syncDatabase');

        final database = await AppDatabase.initDb(
          logger: logger,
        );

        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
        await AppRemoteConfig.init();
        final appRemoteConfig = AppRemoteConfig();

        final coinGeckoDio = Dio();
        coinGeckoDio.options.headers['x-cg-demo-api-key'] =
            appRemoteConfig.coinGeckoApiKey;
        final coinGeckoRetrofit = BitcoinCoinGeckoRetrofit(coinGeckoDio);

        final selicForecastRepository = SelicForecastRepository(
          selicForecastDao: database.selicForecastDao,
          selicForecastRetrofit: selicForecastRetrofit,
          appRemoteConfig: appRemoteConfig,
          logger: logger,
        );

        final selicRealRepository = SelicRealRepository(
          selicDao: database.selicRealDao,
          selicRealRetrofit: selicRealRetrofit,
          appRemoteConfig: appRemoteConfig,
        );

        final bitcoinRepository = BitcoinRepository(
          bitcoinDao: database.bitcoinDao,
          coinGeckoRetrofit: coinGeckoRetrofit,
          logger: logger,
          appRemoteConfig: appRemoteConfig,
        );

        final dollarBacenRetrofit = DollarBacenRetrofit(dio);

        final dollarRepository = DollarRepository(
          dollarBacenRetrofit: dollarBacenRetrofit,
          logger: logger,
          dollarDao: database.dollarDao,
          appRemoteConfig: appRemoteConfig,
        );

        await Future.wait<void>([
          selicForecastRepository.syncDataBase(),
          bitcoinRepository.syncDatabase(),
          selicRealRepository.syncDatabase(),
          dollarRepository.syncDatabase(),
        ]);

        unawaited(AppDatabase.finishSyncDatabase());

        return Future.value(true);
      } catch (error, stackTrace) {
        logger.e(
          'Error on syncDatabase',
          error: error,
          stackTrace: stackTrace,
        );

        return Future.value(false);
      }
    });
  }

  static void initWorkManager() {
    final workManager = Workmanager();
    unawaited(
      workManager.initialize(callbackDispatcher, isInDebugMode: true),
    );

    unawaited(
      workManager.registerPeriodicTask(
        'sync-database',
        'syncDatabase',
        frequency: const Duration(minutes: 15),
        constraints: Constraints(
          networkType: NetworkType.connected,
        ),
      ),
    );
  }
}
