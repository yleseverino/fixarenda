import 'package:fixarenda/src/features/selic_bacen/data/local/selic_forecast_entity.dart';
import 'package:fixarenda/src/features/selic_bacen/domain/models/meeting_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selic_forecast_model.freezed.dart';

@freezed
class SelicForecastModel with _$SelicForecastModel {
  factory SelicForecastModel({
    required MeetingModel meeting,
    required DateTime date,
    required double value,
  }) = _SelicForecastModel;

  factory SelicForecastModel.fromEntity(SelicForecastEntity entity) {
    return SelicForecastModel(
      meeting: MeetingModel.fromEntity(entity.meeting),
      date: entity.date,
      value: entity.median,
    );
  }
}
