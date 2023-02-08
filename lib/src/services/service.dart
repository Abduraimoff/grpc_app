import 'package:grpc/grpc.dart' as grpc;
import 'package:test_app/src/generated/profile.pbgrpc.dart';

class RhanovService extends RhanovServiceBase {
  @override
  Future<BusReadListResponse> doBusListRead(
    grpc.ServiceCall call,
    BusReadRequest request,
  ) async {
    throw UnimplementedError();
  }

  @override
  Future<CustomerReadResponse> doCustomerCreate(
    grpc.ServiceCall call,
    CustomerCreateRequest request,
  ) async {
    return CustomerReadResponse();
  }

  @override
  Future<CustomerReadResponse> doCustomerRead(
    grpc.ServiceCall call,
    CustomerReadRequest request,
  ) async {
    return CustomerReadResponse()
      ..status
      ..message
      ..id
      ..username
      ..firstName
      ..lastName
      ..birthdate
      ..phoneNumber
      ..address
      ..gender
      ..imageUrl;
  }

  @override
  Future<GenderReadResponse> doGenderRead(
    grpc.ServiceCall call,
    GenderReadRequest request,
  ) async {
    return GenderReadResponse()
      ..status
      ..message
      ..results;
  }
}

class Server {
  Future<void> run() async {
    final server = grpc.Server([RhanovService()]);
    await server.serve(port: 9191);
    print('Serving on the port: ${server.port}');
  }
}

Future<void> main() async {
  await Server().run();
}
