part of 'get_customer_cubit.dart';

@immutable
abstract class GetCustomerState {}

class GetCustomerInitial extends GetCustomerState {}

class GetCustomerLoading extends GetCustomerState {}

class GetCustomerSuccess extends GetCustomerState {
  final CustomerReadResponse? data;

  GetCustomerSuccess({this.data});
}

class GetCustomerError extends GetCustomerState {
  final String? error;

  GetCustomerError({this.error});
}
