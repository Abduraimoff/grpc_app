import 'package:grpc/grpc.dart';
import 'package:test_app/src/generated/profile.pbgrpc.dart';
import 'package:test_app/src/grpc_client.dart';

class BusService {
  final ClientChannel? clientChannel = GrpcClient.getClient();

  BusService();

  Future doBusListRead() async {
    if (clientChannel != null) {
      try {
        final res = await RhanovServiceClient(clientChannel!).doBusListRead(
          BusReadRequest(),
        );
        if (res.message == 'Success') {
          return res;
        }
        return null;
      } catch (_) {}
    }
  }
}
