import 'dart:async';
import 'dart:io';

import 'package:fixarenda/src/database/app_shared_preference.dart';
import 'package:fixarenda/src/database/utils/datetime_converter.dart';
import 'package:fixarenda/src/database/utils/meeting_converter.dart';
import 'package:fixarenda/src/features/bitcoin/data/local/bitcoin_dao.dart';
import 'package:fixarenda/src/features/bitcoin/data/local/bitcoin_entity.dart';
import 'package:fixarenda/src/features/dollar/data/local/dollar_dao.dart';
import 'package:fixarenda/src/features/dollar/data/local/dollar_entity.dart';
import 'package:fixarenda/src/features/investment/data/local/daos/investment_bitcoin_dao.dart';
import 'package:fixarenda/src/features/investment/data/local/daos/investment_fixed_income_dao.dart';
import 'package:fixarenda/src/features/investment/data/local/entities/investment_bitcoin_entity.dart';
import 'package:fixarenda/src/features/investment/data/local/entities/investment_fixed_income/investment_fixed_income_entity.dart';
import 'package:fixarenda/src/features/selic_bacen/data/local/selic_forecast_dao.dart';
import 'package:fixarenda/src/features/selic_bacen/data/local/selic_forecast_entity.dart';
import 'package:fixarenda/src/features/selic_bacen/data/meeting_entity.dart';
import 'package:fixarenda/src/features/selic_real/data/local/selic_real_dao.dart';
import 'package:fixarenda/src/features/selic_real/data/local/selic_real_entity.dart';
import 'package:floor/floor.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@TypeConverters([
  DateTimeConverter,
  MeetingModelTypeConverter,
  DateTimeConverterNullable,
])
@Database(
  version: 1,
  entities: [
    SelicRealEntity,
    SelicForecastEntity,
    BitcoinEntity,
    InvestmentBitcoinEntity,
    InvestmentFixedIncomeEntity,
    DollarEntity,
  ],
)
abstract class AppDatabase extends FloorDatabase {
  SelicRealDao get selicRealDao;
  SelicForecastDao get selicForecastDao;
  BitcoinDao get bitcoinDao;
  InvestmentFixedIncomeDao get investmentFixedIncomeDao;
  InvestmentBitcoinDao get investmentBitcoinDao;
  DollarDao get dollarDao;

  static String get databaseName => 'fixarenda.db';

  static String get _dataBaseSyncKey => 'lastSyncDatabase';

  static Future<AppDatabase> initDb({Logger? logger}) async {
    final databasesPath = await sqflite.getDatabasesPath();
    final pathDb = join(databasesPath, databaseName);

    // Check if the database exists
    final exists = await sqflite.databaseExists(pathDb);

    if (!exists) {
      // Should happen only the first time you launch your application
      logger?.i('Copying database from assets');

      // Make sure the parent directory exists
      try {
        await Directory(dirname(pathDb)).create(recursive: true);
      } catch (_) {}

      // Copy from asset
      final data = await rootBundle.load(url.join('assets', databaseName));
      final bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await File(pathDb).writeAsBytes(bytes, flush: true);

      unawaited(finishSyncDatabase());
    } else {
      logger?.i('Opening existing database');
    }

    return $FloorAppDatabase.databaseBuilder(databaseName).build();
  }

  static Future<void> finishSyncDatabase() async {
    final sharedPreferences = SharedPreferencesAsync();
    final prefs = AppSharedPreference(sharedPreferences);

    return prefs.setDateTime(key: _dataBaseSyncKey, value: DateTime.now());
  }
}

final appDatabaseProvider = Provider<AppDatabase>((ref) {
  throw UnimplementedError();
});

final watchSyncDatabaseProvider = Provider.autoDispose<void>((ref) async {
  ref.watch(appSharedPreferencesWatchKeyChangesProvider(
      AppDatabase._dataBaseSyncKey));

  return;
});
