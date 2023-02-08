import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_app/src/generated/profile.pb.dart';
import 'package:test_app/src/services/customer_create_service.dart';

part 'create_customer_state.dart';

class CreateCustomerCubit extends Cubit<CreateCustomerState> {
  final customerService = CustomerService();

  CreateCustomerCubit() : super(CreateCustomerInitial());

  void createCustomer({
    required String userName,
    required String firstName,
    required String lastName,
    required String phoneNumber,
  }) async {
    try {
      emit(CreateCustomerLoading());

      final data = await customerService.createCustomer(
        userName: userName,
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
      );

      if (data != null && (data.message == 'Success')) {
        emit(CreateCustomerSuccess(data: data));
      } else {
        emit(CreateCustomerError(error: data.message));
      }
    } catch (e) {
      emit(CreateCustomerError(error: e.toString()));
    }
  }
}
