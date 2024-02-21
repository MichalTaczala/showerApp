import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shower_app/enums/state.dart';

part 'shower_measure_cubit.freezed.dart';
part 'shower_measure_state.dart';

class ShowerMeasureCubit extends Cubit<ShowerMeasureState> {
  ShowerMeasureCubit()
      : super(
          const ShowerMeasureState(),
        );

  void startShower() {
    emit(
      state.copyWith(
        showerState: StateEnum.duringShower,
      ),
    );
  }

  void endShower() {
    emit(
      state.copyWith(
        showerState: StateEnum.basic,
      ),
    );
  }

  void incrementSeconds() {
    emit(
      state.copyWith(
        numberOfSeconds: state.numberOfSeconds + 1,
      ),
    );
  }

  void resetTimer() {
    emit(
      state.copyWith(
        numberOfSeconds: 0,
      ),
    );
  }

  void saveResults(int seconds) {
    //TODO: Implement saving results
  }
}
