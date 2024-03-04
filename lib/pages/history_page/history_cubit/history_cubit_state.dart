part of 'history_cubit_cubit.dart';

@freezed
class HistoryCubitState with _$HistoryCubitState {
  const factory HistoryCubitState({
    @Default([]) List<ShowerData> showerData,
  }) = _HistoryCubitState;
}
