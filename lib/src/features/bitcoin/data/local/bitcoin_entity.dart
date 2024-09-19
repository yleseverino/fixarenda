import 'package:floor/floor.dart';

@entity
class BitcoinEntity {
  BitcoinEntity({required this.date, required this.value});
  @primaryKey
  final DateTime date;
  final double value;
}
