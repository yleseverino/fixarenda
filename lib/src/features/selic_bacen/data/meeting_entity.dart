class MeetingEntity {
  const MeetingEntity({required this.meeting, required this.year});

  factory MeetingEntity.fromJson(String reuniao) {
    final list = reuniao.split('/');
    return MeetingEntity(
      meeting: int.parse(list[0].replaceAll('R', '')),
      year: int.parse(list[1]),
    );
  }
  final int meeting;
  final int year;

  MeetingEntity addMeeting(int meeting) {
    if (this.meeting + meeting > 8) {
      final meetingAdjust = this.meeting + meeting - 8;
      return MeetingEntity(meeting: meetingAdjust, year: year + 1);
    }
    return MeetingEntity(meeting: this.meeting + meeting, year: year);
  }
}
