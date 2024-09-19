// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dollar_remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DollarRemoteModelImpl _$$DollarRemoteModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DollarRemoteModelImpl(
      dataHoraCotacao: DateTime.parse(json['dataHoraCotacao'] as String),
      cotacaoVenda: (json['cotacaoVenda'] as num).toDouble(),
    );

Map<String, dynamic> _$$DollarRemoteModelImplToJson(
        _$DollarRemoteModelImpl instance) =>
    <String, dynamic>{
      'dataHoraCotacao': instance.dataHoraCotacao.toIso8601String(),
      'cotacaoVenda': instance.cotacaoVenda,
    };
