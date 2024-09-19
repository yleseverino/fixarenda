// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selic_real_remote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelicRealRemoteModel _$SelicRealRemoteModelFromJson(Map<String, dynamic> json) {
  return _SelicRealRemoteModel.fromJson(json);
}

/// @nodoc
mixin _$SelicRealRemoteModel {
  String get data => throw _privateConstructorUsedError;
  String get valor => throw _privateConstructorUsedError;

  /// Serializes this SelicRealRemoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelicRealRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelicRealRemoteModelCopyWith<SelicRealRemoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelicRealRemoteModelCopyWith<$Res> {
  factory $SelicRealRemoteModelCopyWith(SelicRealRemoteModel value,
          $Res Function(SelicRealRemoteModel) then) =
      _$SelicRealRemoteModelCopyWithImpl<$Res, SelicRealRemoteModel>;
  @useResult
  $Res call({String data, String valor});
}

/// @nodoc
class _$SelicRealRemoteModelCopyWithImpl<$Res,
        $Val extends SelicRealRemoteModel>
    implements $SelicRealRemoteModelCopyWith<$Res> {
  _$SelicRealRemoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelicRealRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? valor = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelicRealRemoteModelImplCopyWith<$Res>
    implements $SelicRealRemoteModelCopyWith<$Res> {
  factory _$$SelicRealRemoteModelImplCopyWith(_$SelicRealRemoteModelImpl value,
          $Res Function(_$SelicRealRemoteModelImpl) then) =
      __$$SelicRealRemoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data, String valor});
}

/// @nodoc
class __$$SelicRealRemoteModelImplCopyWithImpl<$Res>
    extends _$SelicRealRemoteModelCopyWithImpl<$Res, _$SelicRealRemoteModelImpl>
    implements _$$SelicRealRemoteModelImplCopyWith<$Res> {
  __$$SelicRealRemoteModelImplCopyWithImpl(_$SelicRealRemoteModelImpl _value,
      $Res Function(_$SelicRealRemoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelicRealRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? valor = null,
  }) {
    return _then(_$SelicRealRemoteModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      valor: null == valor
          ? _value.valor
          : valor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelicRealRemoteModelImpl extends _SelicRealRemoteModel {
  const _$SelicRealRemoteModelImpl({required this.data, required this.valor})
      : super._();

  factory _$SelicRealRemoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelicRealRemoteModelImplFromJson(json);

  @override
  final String data;
  @override
  final String valor;

  @override
  String toString() {
    return 'SelicRealRemoteModel(data: $data, valor: $valor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelicRealRemoteModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.valor, valor) || other.valor == valor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data, valor);

  /// Create a copy of SelicRealRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelicRealRemoteModelImplCopyWith<_$SelicRealRemoteModelImpl>
      get copyWith =>
          __$$SelicRealRemoteModelImplCopyWithImpl<_$SelicRealRemoteModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelicRealRemoteModelImplToJson(
      this,
    );
  }
}

abstract class _SelicRealRemoteModel extends SelicRealRemoteModel {
  const factory _SelicRealRemoteModel(
      {required final String data,
      required final String valor}) = _$SelicRealRemoteModelImpl;
  const _SelicRealRemoteModel._() : super._();

  factory _SelicRealRemoteModel.fromJson(Map<String, dynamic> json) =
      _$SelicRealRemoteModelImpl.fromJson;

  @override
  String get data;
  @override
  String get valor;

  /// Create a copy of SelicRealRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelicRealRemoteModelImplCopyWith<_$SelicRealRemoteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
