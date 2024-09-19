import 'package:fixarenda/src/features/selic_real/data/local/selic_real_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'selic_real_remote_model.freezed.dart';
part 'selic_real_remote_model.g.dart';

@freezed
class SelicRealRemoteModel with _$SelicRealRemoteModel {
  const factory SelicRealRemoteModel({
    required String data,
    required String valor,
  }) = _SelicRealRemoteModel;
  const SelicRealRemoteModel._();

  factory SelicRealRemoteModel.fromJson(Map<String, dynamic> json) =>
      _$SelicRealRemoteModelFromJson(json);

  SelicRealEntity toSelicEntity() {
    return SelicRealEntity(
      date: DateFormat('dd/MM/yyyy').parse(data),
      value: double.parse(valor) / 100,
    );
  }
}
