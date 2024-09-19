import 'package:fixarenda/src/database/database.dart';
import 'package:fixarenda/src/features/dollar/data/local/dollar_entity.dart';
import 'package:floor/floor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@dao
abstract class DollarDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<List<int>> insert(List<DollarEntity> dollars);

  @Query('SELECT * FROM DollarEntity ORDER BY date DESC LIMIT 1;')
  Future<DollarEntity?> getLast();

  @Query('SELECT * FROM DollarEntity')
  Future<List<DollarEntity>> getSelicList();

  @Query('SELECT * FROM DollarEntity WHERE date = :date')
  Future<DollarEntity?> getDollarByDate(DateTime date);
}

final dollarDaoProvider = Provider<DollarDao>((ref) {
  final database = ref.watch(appDatabaseProvider);

  return database.dollarDao;
});
