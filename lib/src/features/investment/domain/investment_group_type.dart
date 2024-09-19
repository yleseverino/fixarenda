import 'package:fixarenda/src/features/investment/domain/investment_sub_type.dart';
import 'package:fixarenda/src/features/investment/domain/investment_type.dart';

enum InvestmentGroupType {
  fixedIncome(
    types: [
      InvestmentType.cdb,
      InvestmentType.lci,
      InvestmentType.lca,
      InvestmentType.treasuryDirect,
      InvestmentType.debenture,
    ],
    subTypes: [
      InvestmentSubType.selic,
      InvestmentSubType.ipca,
      InvestmentSubType.prefixed,
    ],
  ),
  variableIncome(
    types: [
      InvestmentType.stockMarketBrazil,
      InvestmentType.stockMarketUsa,
      InvestmentType.bitcoin,
    ],
    subTypes: [
      InvestmentSubType.stock,
      InvestmentSubType.etf,
    ],
  );

  const InvestmentGroupType({required this.types, required this.subTypes});

  final List<InvestmentType> types;
  final List<InvestmentSubType> subTypes;
}
