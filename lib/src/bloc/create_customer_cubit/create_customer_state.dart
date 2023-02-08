part of 'create_customer_cubit.dart';

abstract class CreateCustomerState {}

class CreateCustomerInitial extends CreateCustomerState {}

class CreateCustomerLoading extends CreateCustomerState {}

class CreateCustomerSuccess extends CreateCustomerState {
  final CustomerReadResponse? data;

  CreateCustomerSuccess({this.data});
}

class CreateCustomerError extends CreateCustomerState {
  final String? error;

  CreateCustomerError({this.error});
}
