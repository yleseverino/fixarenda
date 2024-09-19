import 'package:floor/floor.dart';

@entity
class SelicRealEntity {
  SelicRealEntity({required this.date, required this.value});
  @primaryKey
  final DateTime date;
  final double value;
}
