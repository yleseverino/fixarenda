import 'package:fixarenda/src/features/selic_bacen/data/meeting_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_model.freezed.dart';

@freezed
class MeetingModel with _$MeetingModel {
  const factory MeetingModel({
    required int numberMeeting,
    required int year,
  }) = _MeetingModel;

  const MeetingModel._();

  factory MeetingModel.fromEntity(MeetingEntity entity) {
    return MeetingModel(
      numberMeeting: entity.meeting,
      year: entity.year,
    );
  }

  MeetingEntity toEntity() {
    return MeetingEntity(
      meeting: numberMeeting,
      year: year,
    );
  }

  String get month => _getMonthFromNumberMeeting(numberMeeting);

  String get label => '$numberMeeting/$year';

  String _getMonthFromNumberMeeting(int numberMeeting) {
    switch (numberMeeting) {
      case 2:
        return 'Mar';
      case 4:
        return 'Jun';
      case 6:
        return 'Sep';
      case 8:
        return 'Dec';
      default:
        return '';
    }
  }
}
