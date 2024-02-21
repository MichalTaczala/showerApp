// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shower_measure_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShowerMeasureState {
  StateEnum get showerState => throw _privateConstructorUsedError;
  int get numberOfSeconds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowerMeasureStateCopyWith<ShowerMeasureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowerMeasureStateCopyWith<$Res> {
  factory $ShowerMeasureStateCopyWith(
          ShowerMeasureState value, $Res Function(ShowerMeasureState) then) =
      _$ShowerMeasureStateCopyWithImpl<$Res, ShowerMeasureState>;
  @useResult
  $Res call({StateEnum showerState, int numberOfSeconds});
}

/// @nodoc
class _$ShowerMeasureStateCopyWithImpl<$Res, $Val extends ShowerMeasureState>
    implements $ShowerMeasureStateCopyWith<$Res> {
  _$ShowerMeasureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showerState = null,
    Object? numberOfSeconds = null,
  }) {
    return _then(_value.copyWith(
      showerState: null == showerState
          ? _value.showerState
          : showerState // ignore: cast_nullable_to_non_nullable
              as StateEnum,
      numberOfSeconds: null == numberOfSeconds
          ? _value.numberOfSeconds
          : numberOfSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowerMeasureStateImplCopyWith<$Res>
    implements $ShowerMeasureStateCopyWith<$Res> {
  factory _$$ShowerMeasureStateImplCopyWith(_$ShowerMeasureStateImpl value,
          $Res Function(_$ShowerMeasureStateImpl) then) =
      __$$ShowerMeasureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateEnum showerState, int numberOfSeconds});
}

/// @nodoc
class __$$ShowerMeasureStateImplCopyWithImpl<$Res>
    extends _$ShowerMeasureStateCopyWithImpl<$Res, _$ShowerMeasureStateImpl>
    implements _$$ShowerMeasureStateImplCopyWith<$Res> {
  __$$ShowerMeasureStateImplCopyWithImpl(_$ShowerMeasureStateImpl _value,
      $Res Function(_$ShowerMeasureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showerState = null,
    Object? numberOfSeconds = null,
  }) {
    return _then(_$ShowerMeasureStateImpl(
      showerState: null == showerState
          ? _value.showerState
          : showerState // ignore: cast_nullable_to_non_nullable
              as StateEnum,
      numberOfSeconds: null == numberOfSeconds
          ? _value.numberOfSeconds
          : numberOfSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ShowerMeasureStateImpl implements _ShowerMeasureState {
  const _$ShowerMeasureStateImpl(
      {this.showerState = StateEnum.basic, this.numberOfSeconds = 0});

  @override
  @JsonKey()
  final StateEnum showerState;
  @override
  @JsonKey()
  final int numberOfSeconds;

  @override
  String toString() {
    return 'ShowerMeasureState(showerState: $showerState, numberOfSeconds: $numberOfSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowerMeasureStateImpl &&
            (identical(other.showerState, showerState) ||
                other.showerState == showerState) &&
            (identical(other.numberOfSeconds, numberOfSeconds) ||
                other.numberOfSeconds == numberOfSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showerState, numberOfSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowerMeasureStateImplCopyWith<_$ShowerMeasureStateImpl> get copyWith =>
      __$$ShowerMeasureStateImplCopyWithImpl<_$ShowerMeasureStateImpl>(
          this, _$identity);
}

abstract class _ShowerMeasureState implements ShowerMeasureState {
  const factory _ShowerMeasureState(
      {final StateEnum showerState,
      final int numberOfSeconds}) = _$ShowerMeasureStateImpl;

  @override
  StateEnum get showerState;
  @override
  int get numberOfSeconds;
  @override
  @JsonKey(ignore: true)
  _$$ShowerMeasureStateImplCopyWith<_$ShowerMeasureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
