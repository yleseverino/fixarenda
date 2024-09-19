import 'package:fixarenda/src/features/investment/data/local/daos/investment_base_dao.dart';
import 'package:fixarenda/src/features/investment/data/local/entities/investment_bitcoin_entity.dart';
import 'package:fixarenda/src/features/investment/data/local/entities/investment_fixed_income/investment_fixed_income_entity.dart';
import 'package:floor/floor.dart';

@dao
abstract class InvestmentFixedIncomeDao
    extends InvestmentBaseDao<InvestmentFixedIncomeEntity> {
  @Query('SELECT * FROM InvestmentFixedIncomeEntity where id = :id')
  Future<InvestmentBitcoinEntity?> findById(int id);

  @Query('SELECT * FROM InvestmentFixedIncomeEntity')
  Future<List<InvestmentBitcoinEntity>> getAll();

  @Query('SELECT * FROM InvestmentFixedIncomeEntity where endDate >= :date')
  Future<List<InvestmentBitcoinEntity>> getAllActive(DateTime date);
}
