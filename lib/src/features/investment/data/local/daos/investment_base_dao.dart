import 'package:floor/floor.dart';

abstract class InvestmentBaseDao<T> {
  @Insert(onConflict: OnConflictStrategy.rollback)
  Future<void> insert(T entity);

  @Insert(onConflict: OnConflictStrategy.rollback)
  Future<List<int>> insertAll(List<T> entities);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> update(T entity);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateAll(T entity);

  @delete
  Future<void> remove(T entity);

  @delete
  Future<int> removeAll(List<T> entities);
}
