import 'package:fixarenda/src/features/investment/data/local/daos/investment_base_dao.dart';
import 'package:fixarenda/src/features/investment/data/local/entities/investment_bitcoin_entity.dart';
import 'package:floor/floor.dart';

@dao
abstract class InvestmentBitcoinDao
    extends InvestmentBaseDao<InvestmentBitcoinEntity> {
  @Query('SELECT * FROM InvestmentBitcoinEntity where id = :id')
  Future<InvestmentBitcoinEntity?> findById(int id);

  @Query('SELECT * FROM InvestmentBitcoinEntity')
  Future<List<InvestmentBitcoinEntity>> getAll();

  @Query('SELECT * FROM InvestmentBitcoinEntity where endDate >= :date')
  Future<List<InvestmentBitcoinEntity>> getAllActive(DateTime date);
}
