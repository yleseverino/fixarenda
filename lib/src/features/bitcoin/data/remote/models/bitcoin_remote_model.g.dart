// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bitcoin_remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BitcoinRemoteModelImpl _$$BitcoinRemoteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BitcoinRemoteModelImpl(
      date: DateTime.parse(json['date'] as String),
      value: json['value'] as num,
    );

Map<String, dynamic> _$$BitcoinRemoteModelImplToJson(
        _$BitcoinRemoteModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'value': instance.value,
    };
