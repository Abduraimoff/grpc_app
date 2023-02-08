import 'package:grpc/grpc.dart';

class GrpcClient {
  static ClientChannel? client;

  static ClientChannel? getClient() {
    client = ClientChannel(
      '13.214.50.168',
      port: 9191,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        idleTimeout: Duration(minutes: 1),
      ),
    );
    return client;
  }
}
