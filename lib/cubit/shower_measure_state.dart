part of 'shower_measure_cubit.dart';

@freezed
class ShowerMeasureState with _$ShowerMeasureState {
  const factory ShowerMeasureState({
    @Default(StateEnum.basic) StateEnum showerState,
    @Default(0) int numberOfSeconds,
  }) = _ShowerMeasureState;
}
