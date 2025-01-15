import 'package:reversigrpc/enum/grpc_events.dart';

class Request {
  GrpcEvents event;
  String content;

  Request({
    required this.event,
    this.content = '',
  });
}
