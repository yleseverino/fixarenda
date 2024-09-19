import 'package:fixarenda/src/features/selic_bacen/data/meeting_entity.dart';
import 'package:floor/floor.dart';

class MeetingModelTypeConverter extends TypeConverter<MeetingEntity, String> {
  @override
  MeetingEntity decode(String databaseValue) {
    return MeetingEntity(
      meeting: int.parse(databaseValue[4]),
      year: int.parse(
        databaseValue.substring(0, 4),
      ),
    );
  }

  @override
  String encode(MeetingEntity value) {
    return '${value.year}${value.meeting}';
  }
}
