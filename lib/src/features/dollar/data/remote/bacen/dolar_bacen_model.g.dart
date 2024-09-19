// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dolar_bacen_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DollarBacenModelImpl _$$DollarBacenModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DollarBacenModelImpl(
      value: (json['value'] as List<dynamic>)
          .map((e) => DollarRemoteModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DollarBacenModelImplToJson(
        _$DollarBacenModelImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
