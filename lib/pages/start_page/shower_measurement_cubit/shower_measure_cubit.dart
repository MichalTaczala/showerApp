import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shower_app/enums/state.dart';
import 'package:shower_app/helpers/sql_helper.dart';
import 'package:shower_app/models/shower_data.dart';

part 'shower_measure_cubit.freezed.dart';
part 'shower_measure_state.dart';

class ShowerMeasureCubit extends Cubit<ShowerMeasureState> {
  final SqlHelper sqlHelper = SqlHelper.instance;
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

  void saveResults(int seconds) async {
    await sqlHelper.insertShowerData(
      ShowerData(
        seconds: seconds,
        date: DateTime.now(),
      ),
    );
    emit(
      state.copyWith(
        numberOfSeconds: 0,
        showerState: StateEnum.basic,
      ),
    );
  }
}
