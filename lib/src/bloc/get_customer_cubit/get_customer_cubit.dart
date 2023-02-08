import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test_app/src/services/customer_create_service.dart';

import '../../generated/profile.pb.dart';

part 'get_customer_state.dart';

class GetCustomerCubit extends Cubit<GetCustomerState> {
  final customerService = CustomerService();
  GetCustomerCubit() : super(GetCustomerInitial());

  void loadCustomer(String id) async {
    emit(GetCustomerLoading());
    final data = await customerService.getCustomer(id: id);

    if (data != null && (data.message == 'Success')) {
      emit(GetCustomerSuccess(data: data));
    } else {
      emit(GetCustomerError(error: data.message));
    }
  }
}
