import 'package:fixarenda/src/features/dollar/data/remote/dollar_remote_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dolar_bacen_model.freezed.dart';
part 'dolar_bacen_model.g.dart';

@freezed
class DollarBacenModel with _$DollarBacenModel {
  const factory DollarBacenModel({
    required List<DollarRemoteModel> value,
  }) = _DollarBacenModel;

  factory DollarBacenModel.fromJson(Map<String, dynamic> json) =>
      _$DollarBacenModelFromJson(json);
}
