import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shower_app/helpers/sql_helper.dart';
import 'package:shower_app/models/shower_data.dart';

part 'history_cubit_cubit.freezed.dart';
part 'history_cubit_state.dart';

class HistoryCubitCubit extends Cubit<HistoryCubitState> {
  final SqlHelper sqlHelper = SqlHelper.instance;
  HistoryCubitCubit() : super(const HistoryCubitState());

  void getShowers() async {
    List<ShowerData> showers = await sqlHelper.fetchShowerData();
    emit(
      state.copyWith(
        showerData: showers,
      ),
    );
  }
}
