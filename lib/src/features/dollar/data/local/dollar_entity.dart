import 'package:floor/floor.dart';

@entity
class DollarEntity {
  DollarEntity({required this.date, required this.value});

  @primaryKey
  final DateTime date;
  final double value;
}
