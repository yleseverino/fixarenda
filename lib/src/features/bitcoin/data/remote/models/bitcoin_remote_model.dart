import 'package:fixarenda/src/features/bitcoin/data/local/bitcoin_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bitcoin_remote_model.freezed.dart';
part 'bitcoin_remote_model.g.dart';

@freezed
class BitcoinRemoteModel with _$BitcoinRemoteModel {
  const factory BitcoinRemoteModel({
    required DateTime date,
    required num value,
  }) = _BitcoinRemoteModel;
  const BitcoinRemoteModel._();

  factory BitcoinRemoteModel.fromJson(Map<String, dynamic> json) =>
      _$BitcoinRemoteModelFromJson(json);

  BitcoinEntity toEntity() {
    final dateTruncate = DateTime(
      date.year,
      date.month,
      date.day,
    );

    return BitcoinEntity(
      date: dateTruncate,
      value: value.toDouble(),
    );
  }
}
