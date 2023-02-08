// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../generated/profile.pb.dart';
import '../../services/bus_service.dart';

part 'bus_state.dart';

class BusCubit extends Cubit<BusState> {
  final BusService _busService = BusService();

  BusCubit() : super(BusInitial());

  void loadBuses() async {
    emit(BusLoading());

    try {
      final data = await _busService.doBusListRead();
      if (data != null) {
        emit(BusSuccess(data));
      } else {
        emit(BusError());
      }
    } catch (e) {
      emit(BusError());
    }
  }
}
