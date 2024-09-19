// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bitcoin_remote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BitcoinRemoteModel _$BitcoinRemoteModelFromJson(Map<String, dynamic> json) {
  return _BitcoinRemoteModel.fromJson(json);
}

/// @nodoc
mixin _$BitcoinRemoteModel {
  DateTime get date => throw _privateConstructorUsedError;
  num get value => throw _privateConstructorUsedError;

  /// Serializes this BitcoinRemoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BitcoinRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BitcoinRemoteModelCopyWith<BitcoinRemoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BitcoinRemoteModelCopyWith<$Res> {
  factory $BitcoinRemoteModelCopyWith(
          BitcoinRemoteModel value, $Res Function(BitcoinRemoteModel) then) =
      _$BitcoinRemoteModelCopyWithImpl<$Res, BitcoinRemoteModel>;
  @useResult
  $Res call({DateTime date, num value});
}

/// @nodoc
class _$BitcoinRemoteModelCopyWithImpl<$Res, $Val extends BitcoinRemoteModel>
    implements $BitcoinRemoteModelCopyWith<$Res> {
  _$BitcoinRemoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BitcoinRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BitcoinRemoteModelImplCopyWith<$Res>
    implements $BitcoinRemoteModelCopyWith<$Res> {
  factory _$$BitcoinRemoteModelImplCopyWith(_$BitcoinRemoteModelImpl value,
          $Res Function(_$BitcoinRemoteModelImpl) then) =
      __$$BitcoinRemoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, num value});
}

/// @nodoc
class __$$BitcoinRemoteModelImplCopyWithImpl<$Res>
    extends _$BitcoinRemoteModelCopyWithImpl<$Res, _$BitcoinRemoteModelImpl>
    implements _$$BitcoinRemoteModelImplCopyWith<$Res> {
  __$$BitcoinRemoteModelImplCopyWithImpl(_$BitcoinRemoteModelImpl _value,
      $Res Function(_$BitcoinRemoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BitcoinRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_$BitcoinRemoteModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BitcoinRemoteModelImpl extends _BitcoinRemoteModel {
  const _$BitcoinRemoteModelImpl({required this.date, required this.value})
      : super._();

  factory _$BitcoinRemoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BitcoinRemoteModelImplFromJson(json);

  @override
  final DateTime date;
  @override
  final num value;

  @override
  String toString() {
    return 'BitcoinRemoteModel(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BitcoinRemoteModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, value);

  /// Create a copy of BitcoinRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BitcoinRemoteModelImplCopyWith<_$BitcoinRemoteModelImpl> get copyWith =>
      __$$BitcoinRemoteModelImplCopyWithImpl<_$BitcoinRemoteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BitcoinRemoteModelImplToJson(
      this,
    );
  }
}

abstract class _BitcoinRemoteModel extends BitcoinRemoteModel {
  const factory _BitcoinRemoteModel(
      {required final DateTime date,
      required final num value}) = _$BitcoinRemoteModelImpl;
  const _BitcoinRemoteModel._() : super._();

  factory _BitcoinRemoteModel.fromJson(Map<String, dynamic> json) =
      _$BitcoinRemoteModelImpl.fromJson;

  @override
  DateTime get date;
  @override
  num get value;

  /// Create a copy of BitcoinRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BitcoinRemoteModelImplCopyWith<_$BitcoinRemoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
