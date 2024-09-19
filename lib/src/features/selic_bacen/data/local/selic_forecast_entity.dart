import 'package:fixarenda/src/database/utils/meeting_converter.dart';
import 'package:fixarenda/src/features/selic_bacen/data/meeting_entity.dart';
import 'package:floor/floor.dart';

@TypeConverters([MeetingModelTypeConverter])
@entity
class SelicForecastEntity {
  SelicForecastEntity({
    required this.id,
    required this.meeting,
    required this.date,
    required this.baseCalculo,
    required this.median,
  });

  @primaryKey
  final int? id;
  final MeetingEntity meeting;
  final DateTime date;
  final double median;
  final int baseCalculo;
}
