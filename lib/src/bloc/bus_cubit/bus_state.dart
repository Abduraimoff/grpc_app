part of 'bus_cubit.dart';

@immutable
abstract class BusState {}

class BusInitial extends BusState {}

class BusLoading extends BusState {}

class BusSuccess extends BusState {
  final BusReadListResponse data;

  BusSuccess(this.data);
}

class BusError extends BusState {}
