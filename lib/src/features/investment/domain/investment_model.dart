import 'package:fixarenda/src/features/investment/domain/investment_sub_type.dart';
import 'package:fixarenda/src/features/investment/domain/investment_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class investmentModel {
  const investmentModel({
    required this.id,
    required this.name,
    required this.investedAmount,
    required this.interestRate,
    required this.date,
    required this.endDate,
    required this.type,
    required this.subType,
    required this.profitGross,
    required this.taxation,
  });

  final int id;
  final String name;
  final double investedAmount;
  final double interestRate;
  final DateTime date;
  final DateTime? endDate;
  final InvestmentType type;
  final InvestmentSubType subType;
  final AsyncValue<num> profitGross;
  final num taxation;

  AsyncValue<num> profitLiquid() {
    return profitGross.when(
      data: (value) {
        return AsyncValue.data(value - taxation);
      },
      loading: AsyncValue.loading,
      error: AsyncValue.error,
    );
  }
}
