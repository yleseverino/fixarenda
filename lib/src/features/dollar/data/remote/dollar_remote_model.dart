import 'package:fixarenda/src/features/dollar/data/local/dollar_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dollar_remote_model.freezed.dart';
part 'dollar_remote_model.g.dart';

@freezed
class DollarRemoteModel with _$DollarRemoteModel {
  const factory DollarRemoteModel({
    required DateTime dataHoraCotacao,
    required double cotacaoVenda,
  }) = _DollarRemoteModel;

  const DollarRemoteModel._();

  factory DollarRemoteModel.fromJson(Map<String, dynamic> json) =>
      _$DollarRemoteModelFromJson(json);

  DollarEntity toEntity() {
    return DollarEntity(
      date: dataHoraCotacao,
      value: cotacaoVenda,
    );
  }
}
