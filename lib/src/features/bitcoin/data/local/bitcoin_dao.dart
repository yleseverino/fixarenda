import 'package:fixarenda/src/database/database.dart';
import 'package:fixarenda/src/features/bitcoin/data/local/bitcoin_entity.dart';
import 'package:floor/floor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@dao
abstract class BitcoinDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<List<int>> insert(List<BitcoinEntity> selics);

  @Query('SELECT COUNT(date) FROM BitcoinEntity WHERE date >= :date')
  Future<int?> getCountDays(DateTime date);

  @Query('SELECT MIN(date) FROM BitcoinEntity')
  Future<String?> getMinDate();

  @Query('SELECT MAX(date) FROM BitcoinEntity')
  Future<String?> getLastDate();

  @Query('SELECT * FROM BitcoinEntity')
  Future<List<BitcoinEntity>> get();
}

final bitcoinDaoProvider = Provider<BitcoinDao>((ref) {
  final database = ref.watch(appDatabaseProvider);
  return database.bitcoinDao;
});
