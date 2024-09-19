import 'package:fixarenda/src/features/selic_bacen/data/local/selic_forecast_entity.dart';
import 'package:fixarenda/src/features/selic_bacen/data/meeting_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selic_forecast_remote_model.freezed.dart';
part 'selic_forecast_remote_model.g.dart';

@freezed
class SelicForecastRemoteEntity with _$SelicForecastRemoteEntity {
  factory SelicForecastRemoteEntity({
    required List<SelicForecastItemModel> value,
  }) = _SelicForecastRemoteModel;

  factory SelicForecastRemoteEntity.fromJson(Map<String, dynamic> json) =>
      _$SelicForecastRemoteEntityFromJson(json);
}

@freezed
class SelicForecastItemModel with _$SelicForecastItemModel {
  factory SelicForecastItemModel({
    @JsonKey(name: 'Data') required DateTime data,
    @JsonKey(name: 'Reuniao') required String reuniao,
    @JsonKey(name: 'Mediana') required double mediana,
    required int baseCalculo,
  }) = __SelicForecastItemModel;
  const SelicForecastItemModel._();

  factory SelicForecastItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_SelicForecastItemModelImplFromJson(json);

  SelicForecastEntity toEntity() {
    return SelicForecastEntity(
      id: null,
      date: data,
      meeting: MeetingEntity.fromJson(reuniao),
      baseCalculo: baseCalculo,
      median: mediana,
    );
  }
}
