// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bitcoin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BitcoinModel {
  double get value => throw _privateConstructorUsedError;

  /// Create a copy of BitcoinModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BitcoinModelCopyWith<BitcoinModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BitcoinModelCopyWith<$Res> {
  factory $BitcoinModelCopyWith(
          BitcoinModel value, $Res Function(BitcoinModel) then) =
      _$BitcoinModelCopyWithImpl<$Res, BitcoinModel>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class _$BitcoinModelCopyWithImpl<$Res, $Val extends BitcoinModel>
    implements $BitcoinModelCopyWith<$Res> {
  _$BitcoinModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BitcoinModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BitcoinModelImplCopyWith<$Res>
    implements $BitcoinModelCopyWith<$Res> {
  factory _$$BitcoinModelImplCopyWith(
          _$BitcoinModelImpl value, $Res Function(_$BitcoinModelImpl) then) =
      __$$BitcoinModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$BitcoinModelImplCopyWithImpl<$Res>
    extends _$BitcoinModelCopyWithImpl<$Res, _$BitcoinModelImpl>
    implements _$$BitcoinModelImplCopyWith<$Res> {
  __$$BitcoinModelImplCopyWithImpl(
      _$BitcoinModelImpl _value, $Res Function(_$BitcoinModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BitcoinModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$BitcoinModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$BitcoinModelImpl implements _BitcoinModel {
  const _$BitcoinModelImpl({required this.value});

  @override
  final double value;

  @override
  String toString() {
    return 'BitcoinModel(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BitcoinModelImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of BitcoinModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BitcoinModelImplCopyWith<_$BitcoinModelImpl> get copyWith =>
      __$$BitcoinModelImplCopyWithImpl<_$BitcoinModelImpl>(this, _$identity);
}

abstract class _BitcoinModel implements BitcoinModel {
  const factory _BitcoinModel({required final double value}) =
      _$BitcoinModelImpl;

  @override
  double get value;

  /// Create a copy of BitcoinModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BitcoinModelImplCopyWith<_$BitcoinModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
