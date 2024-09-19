import 'package:fixarenda/src/features/investment/data/local/entities/investment_base_entity.dart';
import 'package:fixarenda/src/features/investment/data/local/entities/investment_fixed_income/investment_fixed_income_subtype.dart';
import 'package:fixarenda/src/features/investment/data/local/entities/investment_fixed_income/investment_fixed_income_type.dart';
import 'package:floor/floor.dart';

@entity
class InvestmentFixedIncomeEntity extends InvestmentBaseEntity {
  InvestmentFixedIncomeEntity({
    required super.id,
    required super.investedAmount,
    required super.date,
    required DateTime endDate,
    required this.type,
    required this.rate,
    required this.subtype,
    super.createTime,
    super.updateTime,
  }) : super(
          endDate: endDate,
        );

  final double rate;
  final InvestmentType type;
  final InvestmentFixedIncomeSubtype subtype;
}
