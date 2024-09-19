// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selic_forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelicForecastModel {
  MeetingModel get meeting => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  /// Create a copy of SelicForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelicForecastModelCopyWith<SelicForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelicForecastModelCopyWith<$Res> {
  factory $SelicForecastModelCopyWith(
          SelicForecastModel value, $Res Function(SelicForecastModel) then) =
      _$SelicForecastModelCopyWithImpl<$Res, SelicForecastModel>;
  @useResult
  $Res call({MeetingModel meeting, DateTime date, double value});

  $MeetingModelCopyWith<$Res> get meeting;
}

/// @nodoc
class _$SelicForecastModelCopyWithImpl<$Res, $Val extends SelicForecastModel>
    implements $SelicForecastModelCopyWith<$Res> {
  _$SelicForecastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelicForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meeting = null,
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      meeting: null == meeting
          ? _value.meeting
          : meeting // ignore: cast_nullable_to_non_nullable
              as MeetingModel,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of SelicForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeetingModelCopyWith<$Res> get meeting {
    return $MeetingModelCopyWith<$Res>(_value.meeting, (value) {
      return _then(_value.copyWith(meeting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SelicForecastModelImplCopyWith<$Res>
    implements $SelicForecastModelCopyWith<$Res> {
  factory _$$SelicForecastModelImplCopyWith(_$SelicForecastModelImpl value,
          $Res Function(_$SelicForecastModelImpl) then) =
      __$$SelicForecastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MeetingModel meeting, DateTime date, double value});

  @override
  $MeetingModelCopyWith<$Res> get meeting;
}

/// @nodoc
class __$$SelicForecastModelImplCopyWithImpl<$Res>
    extends _$SelicForecastModelCopyWithImpl<$Res, _$SelicForecastModelImpl>
    implements _$$SelicForecastModelImplCopyWith<$Res> {
  __$$SelicForecastModelImplCopyWithImpl(_$SelicForecastModelImpl _value,
      $Res Function(_$SelicForecastModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelicForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meeting = null,
    Object? date = null,
    Object? value = null,
  }) {
    return _then(_$SelicForecastModelImpl(
      meeting: null == meeting
          ? _value.meeting
          : meeting // ignore: cast_nullable_to_non_nullable
              as MeetingModel,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SelicForecastModelImpl implements _SelicForecastModel {
  _$SelicForecastModelImpl(
      {required this.meeting, required this.date, required this.value});

  @override
  final MeetingModel meeting;
  @override
  final DateTime date;
  @override
  final double value;

  @override
  String toString() {
    return 'SelicForecastModel(meeting: $meeting, date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelicForecastModelImpl &&
            (identical(other.meeting, meeting) || other.meeting == meeting) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meeting, date, value);

  /// Create a copy of SelicForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelicForecastModelImplCopyWith<_$SelicForecastModelImpl> get copyWith =>
      __$$SelicForecastModelImplCopyWithImpl<_$SelicForecastModelImpl>(
          this, _$identity);
}

abstract class _SelicForecastModel implements SelicForecastModel {
  factory _SelicForecastModel(
      {required final MeetingModel meeting,
      required final DateTime date,
      required final double value}) = _$SelicForecastModelImpl;

  @override
  MeetingModel get meeting;
  @override
  DateTime get date;
  @override
  double get value;

  /// Create a copy of SelicForecastModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelicForecastModelImplCopyWith<_$SelicForecastModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
