// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shower_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShowerData {
  Duration get time => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowerDataCopyWith<ShowerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowerDataCopyWith<$Res> {
  factory $ShowerDataCopyWith(
          ShowerData value, $Res Function(ShowerData) then) =
      _$ShowerDataCopyWithImpl<$Res, ShowerData>;
  @useResult
  $Res call({Duration time, DateTime date});
}

/// @nodoc
class _$ShowerDataCopyWithImpl<$Res, $Val extends ShowerData>
    implements $ShowerDataCopyWith<$Res> {
  _$ShowerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowerDataImplCopyWith<$Res>
    implements $ShowerDataCopyWith<$Res> {
  factory _$$ShowerDataImplCopyWith(
          _$ShowerDataImpl value, $Res Function(_$ShowerDataImpl) then) =
      __$$ShowerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration time, DateTime date});
}

/// @nodoc
class __$$ShowerDataImplCopyWithImpl<$Res>
    extends _$ShowerDataCopyWithImpl<$Res, _$ShowerDataImpl>
    implements _$$ShowerDataImplCopyWith<$Res> {
  __$$ShowerDataImplCopyWithImpl(
      _$ShowerDataImpl _value, $Res Function(_$ShowerDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? date = null,
  }) {
    return _then(_$ShowerDataImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as Duration,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ShowerDataImpl implements _ShowerData {
  const _$ShowerDataImpl({required this.time, required this.date});

  @override
  final Duration time;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'ShowerData(time: $time, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowerDataImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowerDataImplCopyWith<_$ShowerDataImpl> get copyWith =>
      __$$ShowerDataImplCopyWithImpl<_$ShowerDataImpl>(this, _$identity);
}

abstract class _ShowerData implements ShowerData {
  const factory _ShowerData(
      {required final Duration time,
      required final DateTime date}) = _$ShowerDataImpl;

  @override
  Duration get time;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$ShowerDataImplCopyWith<_$ShowerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
