import 'package:freezed_annotation/freezed_annotation.dart';

part 'bitcoin_model.freezed.dart';

@freezed
class BitcoinModel with _$BitcoinModel {
  const factory BitcoinModel({
    required double value,
  }) = _BitcoinModel;
}
