// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selic_chart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelicChartState {
  List<SelicChartStateItem> get items => throw _privateConstructorUsedError;

  /// Create a copy of SelicChartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelicChartStateCopyWith<SelicChartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelicChartStateCopyWith<$Res> {
  factory $SelicChartStateCopyWith(
          SelicChartState value, $Res Function(SelicChartState) then) =
      _$SelicChartStateCopyWithImpl<$Res, SelicChartState>;
  @useResult
  $Res call({List<SelicChartStateItem> items});
}

/// @nodoc
class _$SelicChartStateCopyWithImpl<$Res, $Val extends SelicChartState>
    implements $SelicChartStateCopyWith<$Res> {
  _$SelicChartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelicChartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SelicChartStateItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelicChartStateImplCopyWith<$Res>
    implements $SelicChartStateCopyWith<$Res> {
  factory _$$SelicChartStateImplCopyWith(_$SelicChartStateImpl value,
          $Res Function(_$SelicChartStateImpl) then) =
      __$$SelicChartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SelicChartStateItem> items});
}

/// @nodoc
class __$$SelicChartStateImplCopyWithImpl<$Res>
    extends _$SelicChartStateCopyWithImpl<$Res, _$SelicChartStateImpl>
    implements _$$SelicChartStateImplCopyWith<$Res> {
  __$$SelicChartStateImplCopyWithImpl(
      _$SelicChartStateImpl _value, $Res Function(_$SelicChartStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelicChartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$SelicChartStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SelicChartStateItem>,
    ));
  }
}

/// @nodoc

class _$SelicChartStateImpl implements _SelicChartState {
  const _$SelicChartStateImpl({required final List<SelicChartStateItem> items})
      : _items = items;

  final List<SelicChartStateItem> _items;
  @override
  List<SelicChartStateItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SelicChartState(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelicChartStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of SelicChartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelicChartStateImplCopyWith<_$SelicChartStateImpl> get copyWith =>
      __$$SelicChartStateImplCopyWithImpl<_$SelicChartStateImpl>(
          this, _$identity);
}

abstract class _SelicChartState implements SelicChartState {
  const factory _SelicChartState(
      {required final List<SelicChartStateItem> items}) = _$SelicChartStateImpl;

  @override
  List<SelicChartStateItem> get items;

  /// Create a copy of SelicChartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelicChartStateImplCopyWith<_$SelicChartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelicChartStateItem {
  String get label => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String get month => throw _privateConstructorUsedError;
  DateTime get lastDate => throw _privateConstructorUsedError;

  /// Create a copy of SelicChartStateItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelicChartStateItemCopyWith<SelicChartStateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelicChartStateItemCopyWith<$Res> {
  factory $SelicChartStateItemCopyWith(
          SelicChartStateItem value, $Res Function(SelicChartStateItem) then) =
      _$SelicChartStateItemCopyWithImpl<$Res, SelicChartStateItem>;
  @useResult
  $Res call({String label, double value, String month, DateTime lastDate});
}

/// @nodoc
class _$SelicChartStateItemCopyWithImpl<$Res, $Val extends SelicChartStateItem>
    implements $SelicChartStateItemCopyWith<$Res> {
  _$SelicChartStateItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelicChartStateItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
    Object? month = null,
    Object? lastDate = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      lastDate: null == lastDate
          ? _value.lastDate
          : lastDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelicChartStateItemImplCopyWith<$Res>
    implements $SelicChartStateItemCopyWith<$Res> {
  factory _$$SelicChartStateItemImplCopyWith(_$SelicChartStateItemImpl value,
          $Res Function(_$SelicChartStateItemImpl) then) =
      __$$SelicChartStateItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, double value, String month, DateTime lastDate});
}

/// @nodoc
class __$$SelicChartStateItemImplCopyWithImpl<$Res>
    extends _$SelicChartStateItemCopyWithImpl<$Res, _$SelicChartStateItemImpl>
    implements _$$SelicChartStateItemImplCopyWith<$Res> {
  __$$SelicChartStateItemImplCopyWithImpl(_$SelicChartStateItemImpl _value,
      $Res Function(_$SelicChartStateItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelicChartStateItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
    Object? month = null,
    Object? lastDate = null,
  }) {
    return _then(_$SelicChartStateItemImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      lastDate: null == lastDate
          ? _value.lastDate
          : lastDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SelicChartStateItemImpl implements _SelicChartStateItem {
  const _$SelicChartStateItemImpl(
      {required this.label,
      required this.value,
      required this.month,
      required this.lastDate});

  @override
  final String label;
  @override
  final double value;
  @override
  final String month;
  @override
  final DateTime lastDate;

  @override
  String toString() {
    return 'SelicChartStateItem(label: $label, value: $value, month: $month, lastDate: $lastDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelicChartStateItemImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.lastDate, lastDate) ||
                other.lastDate == lastDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, value, month, lastDate);

  /// Create a copy of SelicChartStateItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelicChartStateItemImplCopyWith<_$SelicChartStateItemImpl> get copyWith =>
      __$$SelicChartStateItemImplCopyWithImpl<_$SelicChartStateItemImpl>(
          this, _$identity);
}

abstract class _SelicChartStateItem implements SelicChartStateItem {
  const factory _SelicChartStateItem(
      {required final String label,
      required final double value,
      required final String month,
      required final DateTime lastDate}) = _$SelicChartStateItemImpl;

  @override
  String get label;
  @override
  double get value;
  @override
  String get month;
  @override
  DateTime get lastDate;

  /// Create a copy of SelicChartStateItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelicChartStateItemImplCopyWith<_$SelicChartStateItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
