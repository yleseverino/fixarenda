import 'package:fixarenda/src/features/investment/data/local/entities/investment_base_entity.dart';
import 'package:floor/floor.dart';

@entity
class InvestmentBitcoinEntity extends InvestmentBaseEntity {
  InvestmentBitcoinEntity({
    required super.id,
    required super.investedAmount,
    required super.date,
    required super.endDate,
    required this.bitcoinAmount,
    super.createTime,
    super.updateTime,
  });

  @ColumnInfo(name: 'bitcoin_amount')
  final double bitcoinAmount;
}
