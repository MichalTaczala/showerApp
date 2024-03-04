// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_cubit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HistoryCubitState {
  List<ShowerData> get showerData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryCubitStateCopyWith<HistoryCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryCubitStateCopyWith<$Res> {
  factory $HistoryCubitStateCopyWith(
          HistoryCubitState value, $Res Function(HistoryCubitState) then) =
      _$HistoryCubitStateCopyWithImpl<$Res, HistoryCubitState>;
  @useResult
  $Res call({List<ShowerData> showerData});
}

/// @nodoc
class _$HistoryCubitStateCopyWithImpl<$Res, $Val extends HistoryCubitState>
    implements $HistoryCubitStateCopyWith<$Res> {
  _$HistoryCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showerData = null,
  }) {
    return _then(_value.copyWith(
      showerData: null == showerData
          ? _value.showerData
          : showerData // ignore: cast_nullable_to_non_nullable
              as List<ShowerData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryCubitStateImplCopyWith<$Res>
    implements $HistoryCubitStateCopyWith<$Res> {
  factory _$$HistoryCubitStateImplCopyWith(_$HistoryCubitStateImpl value,
          $Res Function(_$HistoryCubitStateImpl) then) =
      __$$HistoryCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ShowerData> showerData});
}

/// @nodoc
class __$$HistoryCubitStateImplCopyWithImpl<$Res>
    extends _$HistoryCubitStateCopyWithImpl<$Res, _$HistoryCubitStateImpl>
    implements _$$HistoryCubitStateImplCopyWith<$Res> {
  __$$HistoryCubitStateImplCopyWithImpl(_$HistoryCubitStateImpl _value,
      $Res Function(_$HistoryCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showerData = null,
  }) {
    return _then(_$HistoryCubitStateImpl(
      showerData: null == showerData
          ? _value._showerData
          : showerData // ignore: cast_nullable_to_non_nullable
              as List<ShowerData>,
    ));
  }
}

/// @nodoc

class _$HistoryCubitStateImpl implements _HistoryCubitState {
  const _$HistoryCubitStateImpl({final List<ShowerData> showerData = const []})
      : _showerData = showerData;

  final List<ShowerData> _showerData;
  @override
  @JsonKey()
  List<ShowerData> get showerData {
    if (_showerData is EqualUnmodifiableListView) return _showerData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_showerData);
  }

  @override
  String toString() {
    return 'HistoryCubitState(showerData: $showerData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryCubitStateImpl &&
            const DeepCollectionEquality()
                .equals(other._showerData, _showerData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_showerData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryCubitStateImplCopyWith<_$HistoryCubitStateImpl> get copyWith =>
      __$$HistoryCubitStateImplCopyWithImpl<_$HistoryCubitStateImpl>(
          this, _$identity);
}

abstract class _HistoryCubitState implements HistoryCubitState {
  const factory _HistoryCubitState({final List<ShowerData> showerData}) =
      _$HistoryCubitStateImpl;

  @override
  List<ShowerData> get showerData;
  @override
  @JsonKey(ignore: true)
  _$$HistoryCubitStateImplCopyWith<_$HistoryCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
