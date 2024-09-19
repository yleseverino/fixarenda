import 'package:floor/floor.dart';

@Entity()
class InvestmentBaseEntity {
  InvestmentBaseEntity({
    required this.id,
    required this.investedAmount,
    required this.date,
    required this.endDate,
    DateTime? createTime,
    this.updateTime,
  }) : createTime = createTime ?? DateTime.now();

  @PrimaryKey(autoGenerate: true)
  final int? id;
  @ColumnInfo(name: 'invested_amount')
  final double investedAmount;
  final DateTime date;
  @ColumnInfo(name: 'end_date')
  final DateTime? endDate;
  @ColumnInfo(name: 'create_time')
  final DateTime createTime;
  @ColumnInfo(name: 'update_time')
  final DateTime? updateTime;
}
