import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:test_app/src/generated/profile.pbgrpc.dart';
import 'package:test_app/src/grpc_client.dart';

class CustomerService {
  final ClientChannel? clientChannel = GrpcClient.getClient();

  CustomerService();

  Future createCustomer({
    required String userName,
    required String firstName,
    required String lastName,
    required String phoneNumber,
  }) async {
    if (clientChannel != null) {
      final res = await RhanovServiceClient(clientChannel!).doCustomerCreate(
        CustomerCreateRequest(
          username: userName,
          firstName: firstName,
          lastName: lastName,
          phoneNumber: phoneNumber,
          birthdate: '2003-01-27',
          gender: Int64(1),
          imageUrl: 'lk',
          address: 'Tashkent',
        ),
      );
      return res;
    }
  }

  Future getCustomer({
    required String id,
  }) async {
    if (clientChannel != null) {
      final res = await RhanovServiceClient(clientChannel!).doCustomerRead(
        CustomerReadRequest(id: id),
      );
      return res;
    }
  }
}
