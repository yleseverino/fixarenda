// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dollar_remote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DollarRemoteModel _$DollarRemoteModelFromJson(Map<String, dynamic> json) {
  return _DollarRemoteModel.fromJson(json);
}

/// @nodoc
mixin _$DollarRemoteModel {
  DateTime get dataHoraCotacao => throw _privateConstructorUsedError;
  double get cotacaoVenda => throw _privateConstructorUsedError;

  /// Serializes this DollarRemoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DollarRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DollarRemoteModelCopyWith<DollarRemoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DollarRemoteModelCopyWith<$Res> {
  factory $DollarRemoteModelCopyWith(
          DollarRemoteModel value, $Res Function(DollarRemoteModel) then) =
      _$DollarRemoteModelCopyWithImpl<$Res, DollarRemoteModel>;
  @useResult
  $Res call({DateTime dataHoraCotacao, double cotacaoVenda});
}

/// @nodoc
class _$DollarRemoteModelCopyWithImpl<$Res, $Val extends DollarRemoteModel>
    implements $DollarRemoteModelCopyWith<$Res> {
  _$DollarRemoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DollarRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataHoraCotacao = null,
    Object? cotacaoVenda = null,
  }) {
    return _then(_value.copyWith(
      dataHoraCotacao: null == dataHoraCotacao
          ? _value.dataHoraCotacao
          : dataHoraCotacao // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cotacaoVenda: null == cotacaoVenda
          ? _value.cotacaoVenda
          : cotacaoVenda // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DollarRemoteModelImplCopyWith<$Res>
    implements $DollarRemoteModelCopyWith<$Res> {
  factory _$$DollarRemoteModelImplCopyWith(_$DollarRemoteModelImpl value,
          $Res Function(_$DollarRemoteModelImpl) then) =
      __$$DollarRemoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime dataHoraCotacao, double cotacaoVenda});
}

/// @nodoc
class __$$DollarRemoteModelImplCopyWithImpl<$Res>
    extends _$DollarRemoteModelCopyWithImpl<$Res, _$DollarRemoteModelImpl>
    implements _$$DollarRemoteModelImplCopyWith<$Res> {
  __$$DollarRemoteModelImplCopyWithImpl(_$DollarRemoteModelImpl _value,
      $Res Function(_$DollarRemoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DollarRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataHoraCotacao = null,
    Object? cotacaoVenda = null,
  }) {
    return _then(_$DollarRemoteModelImpl(
      dataHoraCotacao: null == dataHoraCotacao
          ? _value.dataHoraCotacao
          : dataHoraCotacao // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cotacaoVenda: null == cotacaoVenda
          ? _value.cotacaoVenda
          : cotacaoVenda // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DollarRemoteModelImpl extends _DollarRemoteModel {
  const _$DollarRemoteModelImpl(
      {required this.dataHoraCotacao, required this.cotacaoVenda})
      : super._();

  factory _$DollarRemoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DollarRemoteModelImplFromJson(json);

  @override
  final DateTime dataHoraCotacao;
  @override
  final double cotacaoVenda;

  @override
  String toString() {
    return 'DollarRemoteModel(dataHoraCotacao: $dataHoraCotacao, cotacaoVenda: $cotacaoVenda)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DollarRemoteModelImpl &&
            (identical(other.dataHoraCotacao, dataHoraCotacao) ||
                other.dataHoraCotacao == dataHoraCotacao) &&
            (identical(other.cotacaoVenda, cotacaoVenda) ||
                other.cotacaoVenda == cotacaoVenda));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dataHoraCotacao, cotacaoVenda);

  /// Create a copy of DollarRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DollarRemoteModelImplCopyWith<_$DollarRemoteModelImpl> get copyWith =>
      __$$DollarRemoteModelImplCopyWithImpl<_$DollarRemoteModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DollarRemoteModelImplToJson(
      this,
    );
  }
}

abstract class _DollarRemoteModel extends DollarRemoteModel {
  const factory _DollarRemoteModel(
      {required final DateTime dataHoraCotacao,
      required final double cotacaoVenda}) = _$DollarRemoteModelImpl;
  const _DollarRemoteModel._() : super._();

  factory _DollarRemoteModel.fromJson(Map<String, dynamic> json) =
      _$DollarRemoteModelImpl.fromJson;

  @override
  DateTime get dataHoraCotacao;
  @override
  double get cotacaoVenda;

  /// Create a copy of DollarRemoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DollarRemoteModelImplCopyWith<_$DollarRemoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
