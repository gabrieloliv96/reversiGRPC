class GrpcEvents {
  final String event;

  GrpcEvents._(this.event);

  static final GrpcEvents boardMovement = GrpcEvents._('board-moviment');
  static final GrpcEvents message = GrpcEvents._('message');
  static final GrpcEvents giveUp = GrpcEvents._('give-up');
  static final GrpcEvents aceptGiveUp = GrpcEvents._('acept-give-up');
  static final GrpcEvents turnEnd = GrpcEvents._('turn-end');
  static final GrpcEvents firstPlayer = GrpcEvents._('first-player');
}
