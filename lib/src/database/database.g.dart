// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $AppDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $AppDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<AppDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder implements $AppDatabaseBuilderContract {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $AppDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  SelicRealDao? _selicRealDaoInstance;

  SelicForecastDao? _selicForecastDaoInstance;

  BitcoinDao? _bitcoinDaoInstance;

  InvestmentFixedIncomeDao? _investmentFixedIncomeDaoInstance;

  InvestmentBitcoinDao? _investmentBitcoinDaoInstance;

  DollarDao? _dollarDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SelicRealEntity` (`date` TEXT NOT NULL, `value` REAL NOT NULL, PRIMARY KEY (`date`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `SelicForecastEntity` (`id` INTEGER, `meeting` TEXT NOT NULL, `date` TEXT NOT NULL, `median` REAL NOT NULL, `baseCalculo` INTEGER NOT NULL, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BitcoinEntity` (`date` TEXT NOT NULL, `value` REAL NOT NULL, PRIMARY KEY (`date`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `InvestmentBitcoinEntity` (`bitcoin_amount` REAL NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT, `invested_amount` REAL NOT NULL, `date` TEXT NOT NULL, `end_date` TEXT, `create_time` TEXT NOT NULL, `update_time` TEXT)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `InvestmentFixedIncomeEntity` (`rate` REAL NOT NULL, `type` INTEGER NOT NULL, `subtype` INTEGER NOT NULL, `id` INTEGER PRIMARY KEY AUTOINCREMENT, `invested_amount` REAL NOT NULL, `date` TEXT NOT NULL, `end_date` TEXT, `create_time` TEXT NOT NULL, `update_time` TEXT)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `DollarEntity` (`date` TEXT NOT NULL, `value` REAL NOT NULL, PRIMARY KEY (`date`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  SelicRealDao get selicRealDao {
    return _selicRealDaoInstance ??= _$SelicRealDao(database, changeListener);
  }

  @override
  SelicForecastDao get selicForecastDao {
    return _selicForecastDaoInstance ??=
        _$SelicForecastDao(database, changeListener);
  }

  @override
  BitcoinDao get bitcoinDao {
    return _bitcoinDaoInstance ??= _$BitcoinDao(database, changeListener);
  }

  @override
  InvestmentFixedIncomeDao get investmentFixedIncomeDao {
    return _investmentFixedIncomeDaoInstance ??=
        _$InvestmentFixedIncomeDao(database, changeListener);
  }

  @override
  InvestmentBitcoinDao get investmentBitcoinDao {
    return _investmentBitcoinDaoInstance ??=
        _$InvestmentBitcoinDao(database, changeListener);
  }

  @override
  DollarDao get dollarDao {
    return _dollarDaoInstance ??= _$DollarDao(database, changeListener);
  }
}

class _$SelicRealDao extends SelicRealDao {
  _$SelicRealDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _selicRealEntityInsertionAdapter = InsertionAdapter(
            database,
            'SelicRealEntity',
            (SelicRealEntity item) => <String, Object?>{
                  'date': _dateTimeConverter.encode(item.date),
                  'value': item.value
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SelicRealEntity> _selicRealEntityInsertionAdapter;

  @override
  Future<double?> getAvgRateByPeriod(
    DateTime startDate,
    DateTime endDate,
  ) async {
    return _queryAdapter.query(
        'SELECT AVG(value) from SelicRealEntity sre WHERE date >= ?1 and date <= ?2',
        mapper: (Map<String, Object?> row) => row.values.first as double,
        arguments: [
          _dateTimeConverter.encode(startDate),
          _dateTimeConverter.encode(endDate)
        ]);
  }

  @override
  Future<int?> getCountDaysFromPeriod(
    DateTime startDate,
    DateTime endDate,
  ) async {
    return _queryAdapter.query(
        'SELECT COUNT(date) FROM SelicRealEntity WHERE date >= ?1 and date <= ?2',
        mapper: (Map<String, Object?> row) => row.values.first as int,
        arguments: [
          _dateTimeConverter.encode(startDate),
          _dateTimeConverter.encode(endDate)
        ]);
  }

  @override
  Future<SelicRealEntity?> getLastDate() async {
    return _queryAdapter.query(
        'SELECT * FROM SelicRealEntity order by date desc limit 1',
        mapper: (Map<String, Object?> row) => SelicRealEntity(
            date: _dateTimeConverter.decode(row['date'] as String),
            value: row['value'] as double));
  }

  @override
  Future<List<SelicRealEntity>> getSelicList() async {
    return _queryAdapter.queryList('SELECT * FROM SelicRealEntity',
        mapper: (Map<String, Object?> row) => SelicRealEntity(
            date: _dateTimeConverter.decode(row['date'] as String),
            value: row['value'] as double));
  }

  @override
  Future<List<int>> insertSelic(List<SelicRealEntity> selics) {
    return _selicRealEntityInsertionAdapter.insertListAndReturnIds(
        selics, OnConflictStrategy.replace);
  }
}

class _$SelicForecastDao extends SelicForecastDao {
  _$SelicForecastDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _selicForecastEntityInsertionAdapter = InsertionAdapter(
            database,
            'SelicForecastEntity',
            (SelicForecastEntity item) => <String, Object?>{
                  'id': item.id,
                  'meeting': _meetingModelTypeConverter.encode(item.meeting),
                  'date': _dateTimeConverter.encode(item.date),
                  'median': item.median,
                  'baseCalculo': item.baseCalculo
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<SelicForecastEntity>
      _selicForecastEntityInsertionAdapter;

  @override
  Future<double?> getSelicAverageBetweenMeetings(
    MeetingEntity greaterMeeting,
    MeetingEntity lessMeeting,
  ) async {
    return _queryAdapter.query(
        'SELECT           AVG(sf.median)       from       SelicForecastEntity sf       where       date = (       SELECT       max(date) as maxDate       from       SelicForecast)       and baseCalculo = 0       and meeting >= ?1       and meeting <= ?2',
        mapper: (Map<String, Object?> row) => row.values.first as double,
        arguments: [
          _meetingModelTypeConverter.encode(greaterMeeting),
          _meetingModelTypeConverter.encode(lessMeeting)
        ]);
  }

  @override
  Future<List<SelicForecastEntity>> getLastForecastByMeeting(
      MeetingEntity meeting) async {
    return _queryAdapter.queryList(
        'SELECT         *       from         SelicForecastEntity sf       where         date = (         SELECT           max(date) as maxDate         from           SelicForecastEntity)         and baseCalculo = 0         and meeting >= ?1       group by         meeting       order by         meeting asc       limit 16',
        mapper: (Map<String, Object?> row) => SelicForecastEntity(id: row['id'] as int?, meeting: _meetingModelTypeConverter.decode(row['meeting'] as String), date: _dateTimeConverter.decode(row['date'] as String), baseCalculo: row['baseCalculo'] as int, median: row['median'] as double),
        arguments: [_meetingModelTypeConverter.encode(meeting)]);
  }

  @override
  Stream<List<SelicForecastEntity>> watchLastForecastByMeeting(
      MeetingEntity meeting) {
    return _queryAdapter.queryListStream(
        'SELECT         *       from         SelicForecastEntity sf       where         date = (         SELECT           max(date) as maxDate         from           SelicForecastEntity)         and baseCalculo = 0         and meeting >= ?1       group by         meeting       order by         meeting asc       limit 16',
        mapper: (Map<String, Object?> row) => SelicForecastEntity(
            id: row['id'] as int?,
            meeting:
                _meetingModelTypeConverter.decode(row['meeting'] as String),
            date: _dateTimeConverter.decode(row['date'] as String),
            baseCalculo: row['baseCalculo'] as int,
            median: row['median'] as double),
        arguments: [_meetingModelTypeConverter.encode(meeting)],
        queryableName: 'no_table_name',
        isView: false);
  }

  @override
  Future<String?> getLastDate() async {
    return _queryAdapter.query('SELECT max(date) from SelicForecastEntity sf',
        mapper: (Map<String, Object?> row) => row.values.first as String);
  }

  @override
  Future<void> deleteAllForecasts() async {
    await _queryAdapter.queryNoReturn('DELETE FROM SelicForecastEntity');
  }

  @override
  Future<void> insertSelic(List<SelicForecastEntity> selics) async {
    await _selicForecastEntityInsertionAdapter.insertList(
        selics, OnConflictStrategy.replace);
  }

  @override
  Future<void> replaceForecast(List<SelicForecastEntity> selics) async {
    if (database is sqflite.Transaction) {
      await super.replaceForecast(selics);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$AppDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.selicForecastDao.replaceForecast(selics);
      });
    }
  }
}

class _$BitcoinDao extends BitcoinDao {
  _$BitcoinDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _bitcoinEntityInsertionAdapter = InsertionAdapter(
            database,
            'BitcoinEntity',
            (BitcoinEntity item) => <String, Object?>{
                  'date': _dateTimeConverter.encode(item.date),
                  'value': item.value
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<BitcoinEntity> _bitcoinEntityInsertionAdapter;

  @override
  Future<int?> getCountDays(DateTime date) async {
    return _queryAdapter.query(
        'SELECT COUNT(date) FROM BitcoinEntity WHERE date >= ?1',
        mapper: (Map<String, Object?> row) => row.values.first as int,
        arguments: [_dateTimeConverter.encode(date)]);
  }

  @override
  Future<String?> getMinDate() async {
    return _queryAdapter.query('SELECT MIN(date) FROM BitcoinEntity',
        mapper: (Map<String, Object?> row) => row.values.first as String);
  }

  @override
  Future<String?> getLastDate() async {
    return _queryAdapter.query('SELECT MAX(date) FROM BitcoinEntity',
        mapper: (Map<String, Object?> row) => row.values.first as String);
  }

  @override
  Future<List<BitcoinEntity>> get() async {
    return _queryAdapter.queryList('SELECT * FROM BitcoinEntity',
        mapper: (Map<String, Object?> row) => BitcoinEntity(
            date: _dateTimeConverter.decode(row['date'] as String),
            value: row['value'] as double));
  }

  @override
  Future<List<int>> insert(List<BitcoinEntity> selics) {
    return _bitcoinEntityInsertionAdapter.insertListAndReturnIds(
        selics, OnConflictStrategy.replace);
  }
}

class _$InvestmentFixedIncomeDao extends InvestmentFixedIncomeDao {
  _$InvestmentFixedIncomeDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _investmentFixedIncomeEntityInsertionAdapter = InsertionAdapter(
            database,
            'InvestmentFixedIncomeEntity',
            (InvestmentFixedIncomeEntity item) => <String, Object?>{
                  'rate': item.rate,
                  'type': item.type.index,
                  'subtype': item.subtype.index,
                  'id': item.id,
                  'invested_amount': item.investedAmount,
                  'date': _dateTimeConverter.encode(item.date),
                  'end_date': _dateTimeConverterNullable.encode(item.endDate),
                  'create_time': _dateTimeConverter.encode(item.createTime),
                  'update_time':
                      _dateTimeConverterNullable.encode(item.updateTime)
                }),
        _investmentFixedIncomeEntityUpdateAdapter = UpdateAdapter(
            database,
            'InvestmentFixedIncomeEntity',
            ['id'],
            (InvestmentFixedIncomeEntity item) => <String, Object?>{
                  'rate': item.rate,
                  'type': item.type.index,
                  'subtype': item.subtype.index,
                  'id': item.id,
                  'invested_amount': item.investedAmount,
                  'date': _dateTimeConverter.encode(item.date),
                  'end_date': _dateTimeConverterNullable.encode(item.endDate),
                  'create_time': _dateTimeConverter.encode(item.createTime),
                  'update_time':
                      _dateTimeConverterNullable.encode(item.updateTime)
                }),
        _investmentFixedIncomeEntityDeletionAdapter = DeletionAdapter(
            database,
            'InvestmentFixedIncomeEntity',
            ['id'],
            (InvestmentFixedIncomeEntity item) => <String, Object?>{
                  'rate': item.rate,
                  'type': item.type.index,
                  'subtype': item.subtype.index,
                  'id': item.id,
                  'invested_amount': item.investedAmount,
                  'date': _dateTimeConverter.encode(item.date),
                  'end_date': _dateTimeConverterNullable.encode(item.endDate),
                  'create_time': _dateTimeConverter.encode(item.createTime),
                  'update_time':
                      _dateTimeConverterNullable.encode(item.updateTime)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<InvestmentFixedIncomeEntity>
      _investmentFixedIncomeEntityInsertionAdapter;

  final UpdateAdapter<InvestmentFixedIncomeEntity>
      _investmentFixedIncomeEntityUpdateAdapter;

  final DeletionAdapter<InvestmentFixedIncomeEntity>
      _investmentFixedIncomeEntityDeletionAdapter;

  @override
  Future<InvestmentBitcoinEntity?> findById(int id) async {
    return _queryAdapter.query(
        'SELECT * FROM InvestmentFixedIncomeEntity where id = ?1',
        mapper: (Map<String, Object?> row) => InvestmentBitcoinEntity(
            id: row['id'] as int?,
            investedAmount: row['invested_amount'] as double,
            date: _dateTimeConverter.decode(row['date'] as String),
            endDate:
                _dateTimeConverterNullable.decode(row['end_date'] as String?),
            bitcoinAmount: row['bitcoin_amount'] as double,
            createTime: _dateTimeConverterNullable
                .decode(row['create_time'] as String?),
            updateTime: _dateTimeConverterNullable
                .decode(row['update_time'] as String?)),
        arguments: [id]);
  }

  @override
  Future<List<InvestmentBitcoinEntity>> getAll() async {
    return _queryAdapter.queryList('SELECT * FROM InvestmentFixedIncomeEntity',
        mapper: (Map<String, Object?> row) => InvestmentBitcoinEntity(
            id: row['id'] as int?,
            investedAmount: row['invested_amount'] as double,
            date: _dateTimeConverter.decode(row['date'] as String),
            endDate:
                _dateTimeConverterNullable.decode(row['end_date'] as String?),
            bitcoinAmount: row['bitcoin_amount'] as double,
            createTime: _dateTimeConverterNullable
                .decode(row['create_time'] as String?),
            updateTime: _dateTimeConverterNullable
                .decode(row['update_time'] as String?)));
  }

  @override
  Future<List<InvestmentBitcoinEntity>> getAllActive(DateTime date) async {
    return _queryAdapter.queryList(
        'SELECT * FROM InvestmentFixedIncomeEntity where endDate >= ?1',
        mapper: (Map<String, Object?> row) => InvestmentBitcoinEntity(
            id: row['id'] as int?,
            investedAmount: row['invested_amount'] as double,
            date: _dateTimeConverter.decode(row['date'] as String),
            endDate:
                _dateTimeConverterNullable.decode(row['end_date'] as String?),
            bitcoinAmount: row['bitcoin_amount'] as double,
            createTime: _dateTimeConverterNullable
                .decode(row['create_time'] as String?),
            updateTime: _dateTimeConverterNullable
                .decode(row['update_time'] as String?)),
        arguments: [_dateTimeConverter.encode(date)]);
  }

  @override
  Future<void> insert(InvestmentFixedIncomeEntity entity) async {
    await _investmentFixedIncomeEntityInsertionAdapter.insert(
        entity, OnConflictStrategy.rollback);
  }

  @override
  Future<List<int>> insertAll(List<InvestmentFixedIncomeEntity> entities) {
    return _investmentFixedIncomeEntityInsertionAdapter.insertListAndReturnIds(
        entities, OnConflictStrategy.rollback);
  }

  @override
  Future<void> update(InvestmentFixedIncomeEntity entity) async {
    await _investmentFixedIncomeEntityUpdateAdapter.update(
        entity, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateAll(InvestmentFixedIncomeEntity entity) async {
    await _investmentFixedIncomeEntityUpdateAdapter.update(
        entity, OnConflictStrategy.replace);
  }

  @override
  Future<void> remove(InvestmentFixedIncomeEntity entity) async {
    await _investmentFixedIncomeEntityDeletionAdapter.delete(entity);
  }

  @override
  Future<int> removeAll(List<InvestmentFixedIncomeEntity> entities) {
    return _investmentFixedIncomeEntityDeletionAdapter
        .deleteListAndReturnChangedRows(entities);
  }
}

class _$InvestmentBitcoinDao extends InvestmentBitcoinDao {
  _$InvestmentBitcoinDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _investmentBitcoinEntityInsertionAdapter = InsertionAdapter(
            database,
            'InvestmentBitcoinEntity',
            (InvestmentBitcoinEntity item) => <String, Object?>{
                  'bitcoin_amount': item.bitcoinAmount,
                  'id': item.id,
                  'invested_amount': item.investedAmount,
                  'date': _dateTimeConverter.encode(item.date),
                  'end_date': _dateTimeConverterNullable.encode(item.endDate),
                  'create_time': _dateTimeConverter.encode(item.createTime),
                  'update_time':
                      _dateTimeConverterNullable.encode(item.updateTime)
                }),
        _investmentBitcoinEntityUpdateAdapter = UpdateAdapter(
            database,
            'InvestmentBitcoinEntity',
            ['id'],
            (InvestmentBitcoinEntity item) => <String, Object?>{
                  'bitcoin_amount': item.bitcoinAmount,
                  'id': item.id,
                  'invested_amount': item.investedAmount,
                  'date': _dateTimeConverter.encode(item.date),
                  'end_date': _dateTimeConverterNullable.encode(item.endDate),
                  'create_time': _dateTimeConverter.encode(item.createTime),
                  'update_time':
                      _dateTimeConverterNullable.encode(item.updateTime)
                }),
        _investmentBitcoinEntityDeletionAdapter = DeletionAdapter(
            database,
            'InvestmentBitcoinEntity',
            ['id'],
            (InvestmentBitcoinEntity item) => <String, Object?>{
                  'bitcoin_amount': item.bitcoinAmount,
                  'id': item.id,
                  'invested_amount': item.investedAmount,
                  'date': _dateTimeConverter.encode(item.date),
                  'end_date': _dateTimeConverterNullable.encode(item.endDate),
                  'create_time': _dateTimeConverter.encode(item.createTime),
                  'update_time':
                      _dateTimeConverterNullable.encode(item.updateTime)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<InvestmentBitcoinEntity>
      _investmentBitcoinEntityInsertionAdapter;

  final UpdateAdapter<InvestmentBitcoinEntity>
      _investmentBitcoinEntityUpdateAdapter;

  final DeletionAdapter<InvestmentBitcoinEntity>
      _investmentBitcoinEntityDeletionAdapter;

  @override
  Future<InvestmentBitcoinEntity?> findById(int id) async {
    return _queryAdapter.query(
        'SELECT * FROM InvestmentBitcoinEntity where id = ?1',
        mapper: (Map<String, Object?> row) => InvestmentBitcoinEntity(
            id: row['id'] as int?,
            investedAmount: row['invested_amount'] as double,
            date: _dateTimeConverter.decode(row['date'] as String),
            endDate:
                _dateTimeConverterNullable.decode(row['end_date'] as String?),
            bitcoinAmount: row['bitcoin_amount'] as double,
            createTime: _dateTimeConverterNullable
                .decode(row['create_time'] as String?),
            updateTime: _dateTimeConverterNullable
                .decode(row['update_time'] as String?)),
        arguments: [id]);
  }

  @override
  Future<List<InvestmentBitcoinEntity>> getAll() async {
    return _queryAdapter.queryList('SELECT * FROM InvestmentBitcoinEntity',
        mapper: (Map<String, Object?> row) => InvestmentBitcoinEntity(
            id: row['id'] as int?,
            investedAmount: row['invested_amount'] as double,
            date: _dateTimeConverter.decode(row['date'] as String),
            endDate:
                _dateTimeConverterNullable.decode(row['end_date'] as String?),
            bitcoinAmount: row['bitcoin_amount'] as double,
            createTime: _dateTimeConverterNullable
                .decode(row['create_time'] as String?),
            updateTime: _dateTimeConverterNullable
                .decode(row['update_time'] as String?)));
  }

  @override
  Future<List<InvestmentBitcoinEntity>> getAllActive(DateTime date) async {
    return _queryAdapter.queryList(
        'SELECT * FROM InvestmentBitcoinEntity where endDate >= ?1',
        mapper: (Map<String, Object?> row) => InvestmentBitcoinEntity(
            id: row['id'] as int?,
            investedAmount: row['invested_amount'] as double,
            date: _dateTimeConverter.decode(row['date'] as String),
            endDate:
                _dateTimeConverterNullable.decode(row['end_date'] as String?),
            bitcoinAmount: row['bitcoin_amount'] as double,
            createTime: _dateTimeConverterNullable
                .decode(row['create_time'] as String?),
            updateTime: _dateTimeConverterNullable
                .decode(row['update_time'] as String?)),
        arguments: [_dateTimeConverter.encode(date)]);
  }

  @override
  Future<void> insert(InvestmentBitcoinEntity entity) async {
    await _investmentBitcoinEntityInsertionAdapter.insert(
        entity, OnConflictStrategy.rollback);
  }

  @override
  Future<List<int>> insertAll(List<InvestmentBitcoinEntity> entities) {
    return _investmentBitcoinEntityInsertionAdapter.insertListAndReturnIds(
        entities, OnConflictStrategy.rollback);
  }

  @override
  Future<void> update(InvestmentBitcoinEntity entity) async {
    await _investmentBitcoinEntityUpdateAdapter.update(
        entity, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateAll(InvestmentBitcoinEntity entity) async {
    await _investmentBitcoinEntityUpdateAdapter.update(
        entity, OnConflictStrategy.replace);
  }

  @override
  Future<void> remove(InvestmentBitcoinEntity entity) async {
    await _investmentBitcoinEntityDeletionAdapter.delete(entity);
  }

  @override
  Future<int> removeAll(List<InvestmentBitcoinEntity> entities) {
    return _investmentBitcoinEntityDeletionAdapter
        .deleteListAndReturnChangedRows(entities);
  }
}

class _$DollarDao extends DollarDao {
  _$DollarDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _dollarEntityInsertionAdapter = InsertionAdapter(
            database,
            'DollarEntity',
            (DollarEntity item) => <String, Object?>{
                  'date': _dateTimeConverter.encode(item.date),
                  'value': item.value
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<DollarEntity> _dollarEntityInsertionAdapter;

  @override
  Future<DollarEntity?> getLast() async {
    return _queryAdapter.query(
        'SELECT * FROM DollarEntity ORDER BY date DESC LIMIT 1;',
        mapper: (Map<String, Object?> row) => DollarEntity(
            date: _dateTimeConverter.decode(row['date'] as String),
            value: row['value'] as double));
  }

  @override
  Future<List<DollarEntity>> getSelicList() async {
    return _queryAdapter.queryList('SELECT * FROM DollarEntity',
        mapper: (Map<String, Object?> row) => DollarEntity(
            date: _dateTimeConverter.decode(row['date'] as String),
            value: row['value'] as double));
  }

  @override
  Future<DollarEntity?> getDollarByDate(DateTime date) async {
    return _queryAdapter.query('SELECT * FROM DollarEntity WHERE date = ?1',
        mapper: (Map<String, Object?> row) => DollarEntity(
            date: _dateTimeConverter.decode(row['date'] as String),
            value: row['value'] as double),
        arguments: [_dateTimeConverter.encode(date)]);
  }

  @override
  Future<List<int>> insert(List<DollarEntity> dollars) {
    return _dollarEntityInsertionAdapter.insertListAndReturnIds(
        dollars, OnConflictStrategy.replace);
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();
final _meetingModelTypeConverter = MeetingModelTypeConverter();
final _dateTimeConverterNullable = DateTimeConverterNullable();
