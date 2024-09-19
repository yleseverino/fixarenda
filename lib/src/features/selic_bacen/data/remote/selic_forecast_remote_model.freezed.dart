// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selic_forecast_remote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelicForecastRemoteEntity _$SelicForecastRemoteEntityFromJson(
    Map<String, dynamic> json) {
  return _SelicForecastRemoteModel.fromJson(json);
}

/// @nodoc
mixin _$SelicForecastRemoteEntity {
  List<SelicForecastItemModel> get value => throw _privateConstructorUsedError;

  /// Serializes this SelicForecastRemoteEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelicForecastRemoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelicForecastRemoteEntityCopyWith<SelicForecastRemoteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelicForecastRemoteEntityCopyWith<$Res> {
  factory $SelicForecastRemoteEntityCopyWith(SelicForecastRemoteEntity value,
          $Res Function(SelicForecastRemoteEntity) then) =
      _$SelicForecastRemoteEntityCopyWithImpl<$Res, SelicForecastRemoteEntity>;
  @useResult
  $Res call({List<SelicForecastItemModel> value});
}

/// @nodoc
class _$SelicForecastRemoteEntityCopyWithImpl<$Res,
        $Val extends SelicForecastRemoteEntity>
    implements $SelicForecastRemoteEntityCopyWith<$Res> {
  _$SelicForecastRemoteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelicForecastRemoteEntity
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
              as List<SelicForecastItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelicForecastRemoteModelImplCopyWith<$Res>
    implements $SelicForecastRemoteEntityCopyWith<$Res> {
  factory _$$SelicForecastRemoteModelImplCopyWith(
          _$SelicForecastRemoteModelImpl value,
          $Res Function(_$SelicForecastRemoteModelImpl) then) =
      __$$SelicForecastRemoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SelicForecastItemModel> value});
}

/// @nodoc
class __$$SelicForecastRemoteModelImplCopyWithImpl<$Res>
    extends _$SelicForecastRemoteEntityCopyWithImpl<$Res,
        _$SelicForecastRemoteModelImpl>
    implements _$$SelicForecastRemoteModelImplCopyWith<$Res> {
  __$$SelicForecastRemoteModelImplCopyWithImpl(
      _$SelicForecastRemoteModelImpl _value,
      $Res Function(_$SelicForecastRemoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelicForecastRemoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SelicForecastRemoteModelImpl(
      value: null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<SelicForecastItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelicForecastRemoteModelImpl implements _SelicForecastRemoteModel {
  _$SelicForecastRemoteModelImpl(
      {required final List<SelicForecastItemModel> value})
      : _value = value;

  factory _$SelicForecastRemoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelicForecastRemoteModelImplFromJson(json);

  final List<SelicForecastItemModel> _value;
  @override
  List<SelicForecastItemModel> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  String toString() {
    return 'SelicForecastRemoteEntity(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelicForecastRemoteModelImpl &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  /// Create a copy of SelicForecastRemoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelicForecastRemoteModelImplCopyWith<_$SelicForecastRemoteModelImpl>
      get copyWith => __$$SelicForecastRemoteModelImplCopyWithImpl<
          _$SelicForecastRemoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelicForecastRemoteModelImplToJson(
      this,
    );
  }
}

abstract class _SelicForecastRemoteModel implements SelicForecastRemoteEntity {
  factory _SelicForecastRemoteModel(
          {required final List<SelicForecastItemModel> value}) =
      _$SelicForecastRemoteModelImpl;

  factory _SelicForecastRemoteModel.fromJson(Map<String, dynamic> json) =
      _$SelicForecastRemoteModelImpl.fromJson;

  @override
  List<SelicForecastItemModel> get value;

  /// Create a copy of SelicForecastRemoteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelicForecastRemoteModelImplCopyWith<_$SelicForecastRemoteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SelicForecastItemModel _$SelicForecastItemModelFromJson(
    Map<String, dynamic> json) {
  return __SelicForecastItemModel.fromJson(json);
}

/// @nodoc
mixin _$SelicForecastItemModel {
  @JsonKey(name: 'Data')
  DateTime get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'Reuniao')
  String get reuniao => throw _privateConstructorUsedError;
  @JsonKey(name: 'Mediana')
  double get mediana => throw _privateConstructorUsedError;
  int get baseCalculo => throw _privateConstructorUsedError;

  /// Serializes this SelicForecastItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelicForecastItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelicForecastItemModelCopyWith<SelicForecastItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelicForecastItemModelCopyWith<$Res> {
  factory $SelicForecastItemModelCopyWith(SelicForecastItemModel value,
          $Res Function(SelicForecastItemModel) then) =
      _$SelicForecastItemModelCopyWithImpl<$Res, SelicForecastItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Data') DateTime data,
      @JsonKey(name: 'Reuniao') String reuniao,
      @JsonKey(name: 'Mediana') double mediana,
      int baseCalculo});
}

/// @nodoc
class _$SelicForecastItemModelCopyWithImpl<$Res,
        $Val extends SelicForecastItemModel>
    implements $SelicForecastItemModelCopyWith<$Res> {
  _$SelicForecastItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelicForecastItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? reuniao = null,
    Object? mediana = null,
    Object? baseCalculo = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reuniao: null == reuniao
          ? _value.reuniao
          : reuniao // ignore: cast_nullable_to_non_nullable
              as String,
      mediana: null == mediana
          ? _value.mediana
          : mediana // ignore: cast_nullable_to_non_nullable
              as double,
      baseCalculo: null == baseCalculo
          ? _value.baseCalculo
          : baseCalculo // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelicForecastItemModelImplCopyWith<$Res>
    implements $SelicForecastItemModelCopyWith<$Res> {
  factory _$$_SelicForecastItemModelImplCopyWith(
          _$_SelicForecastItemModelImpl value,
          $Res Function(_$_SelicForecastItemModelImpl) then) =
      __$$_SelicForecastItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Data') DateTime data,
      @JsonKey(name: 'Reuniao') String reuniao,
      @JsonKey(name: 'Mediana') double mediana,
      int baseCalculo});
}

/// @nodoc
class __$$_SelicForecastItemModelImplCopyWithImpl<$Res>
    extends _$SelicForecastItemModelCopyWithImpl<$Res,
        _$_SelicForecastItemModelImpl>
    implements _$$_SelicForecastItemModelImplCopyWith<$Res> {
  __$$_SelicForecastItemModelImplCopyWithImpl(
      _$_SelicForecastItemModelImpl _value,
      $Res Function(_$_SelicForecastItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelicForecastItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? reuniao = null,
    Object? mediana = null,
    Object? baseCalculo = null,
  }) {
    return _then(_$_SelicForecastItemModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reuniao: null == reuniao
          ? _value.reuniao
          : reuniao // ignore: cast_nullable_to_non_nullable
              as String,
      mediana: null == mediana
          ? _value.mediana
          : mediana // ignore: cast_nullable_to_non_nullable
              as double,
      baseCalculo: null == baseCalculo
          ? _value.baseCalculo
          : baseCalculo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelicForecastItemModelImpl extends __SelicForecastItemModel {
  _$_SelicForecastItemModelImpl(
      {@JsonKey(name: 'Data') required this.data,
      @JsonKey(name: 'Reuniao') required this.reuniao,
      @JsonKey(name: 'Mediana') required this.mediana,
      required this.baseCalculo})
      : super._();

  factory _$_SelicForecastItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$_SelicForecastItemModelImplFromJson(json);

  @override
  @JsonKey(name: 'Data')
  final DateTime data;
  @override
  @JsonKey(name: 'Reuniao')
  final String reuniao;
  @override
  @JsonKey(name: 'Mediana')
  final double mediana;
  @override
  final int baseCalculo;

  @override
  String toString() {
    return 'SelicForecastItemModel(data: $data, reuniao: $reuniao, mediana: $mediana, baseCalculo: $baseCalculo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelicForecastItemModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.reuniao, reuniao) || other.reuniao == reuniao) &&
            (identical(other.mediana, mediana) || other.mediana == mediana) &&
            (identical(other.baseCalculo, baseCalculo) ||
                other.baseCalculo == baseCalculo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, data, reuniao, mediana, baseCalculo);

  /// Create a copy of SelicForecastItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelicForecastItemModelImplCopyWith<_$_SelicForecastItemModelImpl>
      get copyWith => __$$_SelicForecastItemModelImplCopyWithImpl<
          _$_SelicForecastItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelicForecastItemModelImplToJson(
      this,
    );
  }
}

abstract class __SelicForecastItemModel extends SelicForecastItemModel {
  factory __SelicForecastItemModel(
      {@JsonKey(name: 'Data') required final DateTime data,
      @JsonKey(name: 'Reuniao') required final String reuniao,
      @JsonKey(name: 'Mediana') required final double mediana,
      required final int baseCalculo}) = _$_SelicForecastItemModelImpl;
  __SelicForecastItemModel._() : super._();

  factory __SelicForecastItemModel.fromJson(Map<String, dynamic> json) =
      _$_SelicForecastItemModelImpl.fromJson;

  @override
  @JsonKey(name: 'Data')
  DateTime get data;
  @override
  @JsonKey(name: 'Reuniao')
  String get reuniao;
  @override
  @JsonKey(name: 'Mediana')
  double get mediana;
  @override
  int get baseCalculo;

  /// Create a copy of SelicForecastItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$_SelicForecastItemModelImplCopyWith<_$_SelicForecastItemModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
