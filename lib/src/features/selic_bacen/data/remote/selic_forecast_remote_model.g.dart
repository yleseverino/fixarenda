// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selic_forecast_remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelicForecastRemoteModelImpl _$$SelicForecastRemoteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SelicForecastRemoteModelImpl(
      value: (json['value'] as List<dynamic>)
          .map(
              (e) => SelicForecastItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SelicForecastRemoteModelImplToJson(
        _$SelicForecastRemoteModelImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$_SelicForecastItemModelImpl _$$_SelicForecastItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$_SelicForecastItemModelImpl(
      data: DateTime.parse(json['Data'] as String),
      reuniao: json['Reuniao'] as String,
      mediana: (json['Mediana'] as num).toDouble(),
      baseCalculo: (json['baseCalculo'] as num).toInt(),
    );

Map<String, dynamic> _$$_SelicForecastItemModelImplToJson(
        _$_SelicForecastItemModelImpl instance) =>
    <String, dynamic>{
      'Data': instance.data.toIso8601String(),
      'Reuniao': instance.reuniao,
      'Mediana': instance.mediana,
      'baseCalculo': instance.baseCalculo,
    };
