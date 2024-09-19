import 'package:fixarenda/src/features/investment/domain/investment_sub_type.dart';

enum InvestmentType {
  cdb,
  lci,
  lca,
  treasuryDirect,
  debenture,
  stockMarketBrazil,
  stockMarketUsa,
  bitcoin,
}

extension InvestmentTypeExtension on InvestmentType {
  num getTaxation({
    required DateTime initialDate,
    required num amount,
    required InvestmentSubType subType,
  }) {
    switch (this) {
      case InvestmentType.cdb:
      case InvestmentType.treasuryDirect:
        final today = DateTime.now();
        final days = today.difference(initialDate).inDays;
        if (days <= 180) {
          return 0.225 * amount;
        } else if (days <= 360) {
          return 0.2 * amount;
        } else if (days <= 720) {
          return 0.175 * amount;
        } else {
          return 0.15 * amount;
        }
      case InvestmentType.lci:
      case InvestmentType.lca:
      case InvestmentType.debenture:
      case InvestmentType.stockMarketUsa:
      case InvestmentType.bitcoin:
        return 0;
      case InvestmentType.stockMarketBrazil:
        if (subType == InvestmentSubType.etf) {
          return 0.15 * amount;
        } else {
          return 0;
        }
    }
  }
}
