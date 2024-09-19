// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dolar_bacen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DollarBacenModel _$DollarBacenModelFromJson(Map<String, dynamic> json) {
  return _DollarBacenModel.fromJson(json);
}

/// @nodoc
mixin _$DollarBacenModel {
  List<DollarRemoteModel> get value => throw _privateConstructorUsedError;

  /// Serializes this DollarBacenModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DollarBacenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DollarBacenModelCopyWith<DollarBacenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DollarBacenModelCopyWith<$Res> {
  factory $DollarBacenModelCopyWith(
          DollarBacenModel value, $Res Function(DollarBacenModel) then) =
      _$DollarBacenModelCopyWithImpl<$Res, DollarBacenModel>;
  @useResult
  $Res call({List<DollarRemoteModel> value});
}

/// @nodoc
class _$DollarBacenModelCopyWithImpl<$Res, $Val extends DollarBacenModel>
    implements $DollarBacenModelCopyWith<$Res> {
  _$DollarBacenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DollarBacenModel
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
              as List<DollarRemoteModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DollarBacenModelImplCopyWith<$Res>
    implements $DollarBacenModelCopyWith<$Res> {
  factory _$$DollarBacenModelImplCopyWith(_$DollarBacenModelImpl value,
          $Res Function(_$DollarBacenModelImpl) then) =
      __$$DollarBacenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DollarRemoteModel> value});
}

/// @nodoc
class __$$DollarBacenModelImplCopyWithImpl<$Res>
    extends _$DollarBacenModelCopyWithImpl<$Res, _$DollarBacenModelImpl>
    implements _$$DollarBacenModelImplCopyWith<$Res> {
  __$$DollarBacenModelImplCopyWithImpl(_$DollarBacenModelImpl _value,
      $Res Function(_$DollarBacenModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DollarBacenModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$DollarBacenModelImpl(
      value: null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<DollarRemoteModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DollarBacenModelImpl implements _DollarBacenModel {
  const _$DollarBacenModelImpl({required final List<DollarRemoteModel> value})
      : _value = value;

  factory _$DollarBacenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DollarBacenModelImplFromJson(json);

  final List<DollarRemoteModel> _value;
  @override
  List<DollarRemoteModel> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  String toString() {
    return 'DollarBacenModel(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DollarBacenModelImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  /// Create a copy of DollarBacenModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DollarBacenModelImplCopyWith<_$DollarBacenModelImpl> get copyWith =>
      __$$DollarBacenModelImplCopyWithImpl<_$DollarBacenModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DollarBacenModelImplToJson(
      this,
    );
  }
}

abstract class _DollarBacenModel implements DollarBacenModel {
  const factory _DollarBacenModel(
      {required final List<DollarRemoteModel> value}) = _$DollarBacenModelImpl;

  factory _DollarBacenModel.fromJson(Map<String, dynamic> json) =
      _$DollarBacenModelImpl.fromJson;

  @override
  List<DollarRemoteModel> get value;

  /// Create a copy of DollarBacenModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DollarBacenModelImplCopyWith<_$DollarBacenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
