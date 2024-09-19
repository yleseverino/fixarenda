import 'package:fixarenda/src/database/database.dart';
import 'package:fixarenda/src/features/selic_real/data/local/selic_real_entity.dart';
import 'package:floor/floor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@dao
abstract class SelicRealDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<List<int>> insertSelic(List<SelicRealEntity> selics);

  @Query(
      'SELECT AVG(value) from SelicRealEntity sre WHERE date >= :startDate and date <= :endDate')
  Future<double?> getAvgRateByPeriod(
    DateTime startDate,
    DateTime endDate,
  );

  @Query(
      'SELECT COUNT(date) FROM SelicRealEntity WHERE date >= :startDate and date <= :endDate')
  Future<int?> getCountDaysFromPeriod(
    DateTime startDate,
    DateTime endDate,
  );

  @Query('SELECT * FROM SelicRealEntity order by date desc limit 1')
  Future<SelicRealEntity?> getLastDate();

  @Query('SELECT * FROM SelicRealEntity')
  Future<List<SelicRealEntity>> getSelicList();
}

final selicDaoProvider = Provider<SelicRealDao>((ref) {
  final database = ref.watch(appDatabaseProvider);
  return database.selicRealDao;
});
