//
//  Generated code. Do not modify.
//  source: reversi.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'reversi.pb.dart' as $0;

export 'reversi.pb.dart';

@$pb.GrpcServiceName('reversi.ReversiGameService')
class ReversiGameServiceClient extends $grpc.Client {
  static final _$sendBoardMove = $grpc.ClientMethod<$0.BoardMoveRequest, $0.BoardMoveResponse>(
      '/reversi.ReversiGameService/SendBoardMove',
      ($0.BoardMoveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BoardMoveResponse.fromBuffer(value));
  static final _$giveUp = $grpc.ClientMethod<$0.GiveUpRequest, $0.GiveUpResponse>(
      '/reversi.ReversiGameService/GiveUp',
      ($0.GiveUpRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GiveUpResponse.fromBuffer(value));
  static final _$turnEnd = $grpc.ClientMethod<$0.TurnEndRequest, $0.TurnEndResponse>(
      '/reversi.ReversiGameService/TurnEnd',
      ($0.TurnEndRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TurnEndResponse.fromBuffer(value));
  static final _$firstPlayer = $grpc.ClientMethod<$0.FirstPlayerRequest, $0.FirstPlayerResponse>(
      '/reversi.ReversiGameService/FirstPlayer',
      ($0.FirstPlayerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FirstPlayerResponse.fromBuffer(value));
  static final _$initializeClients = $grpc.ClientMethod<$0.InitializeRequest, $0.InitializeResponse>(
      '/reversi.ReversiGameService/InitializeClients',
      ($0.InitializeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.InitializeResponse.fromBuffer(value));
  static final _$chat = $grpc.ClientMethod<$0.ChatMessage, $0.ChatMessage>(
      '/reversi.ReversiGameService/Chat',
      ($0.ChatMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChatMessage.fromBuffer(value));
  static final _$game = $grpc.ClientMethod<$0.GameMessage, $0.GameMessage>(
      '/reversi.ReversiGameService/Game',
      ($0.GameMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GameMessage.fromBuffer(value));

  ReversiGameServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.BoardMoveResponse> sendBoardMove($0.BoardMoveRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$sendBoardMove, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.GiveUpResponse> giveUp($0.GiveUpRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$giveUp, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.TurnEndResponse> turnEnd($0.TurnEndRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$turnEnd, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.FirstPlayerResponse> firstPlayer($0.FirstPlayerRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$firstPlayer, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.InitializeResponse> initializeClients($0.InitializeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$initializeClients, request, options: options);
  }

  $grpc.ResponseStream<$0.ChatMessage> chat($async.Stream<$0.ChatMessage> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$chat, request, options: options);
  }

  $grpc.ResponseStream<$0.GameMessage> game($async.Stream<$0.GameMessage> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$game, request, options: options);
  }
}

@$pb.GrpcServiceName('reversi.ReversiGameService')
abstract class ReversiGameServiceBase extends $grpc.Service {
  $core.String get $name => 'reversi.ReversiGameService';

  ReversiGameServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.BoardMoveRequest, $0.BoardMoveResponse>(
        'SendBoardMove',
        sendBoardMove_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.BoardMoveRequest.fromBuffer(value),
        ($0.BoardMoveResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GiveUpRequest, $0.GiveUpResponse>(
        'GiveUp',
        giveUp_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.GiveUpRequest.fromBuffer(value),
        ($0.GiveUpResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TurnEndRequest, $0.TurnEndResponse>(
        'TurnEnd',
        turnEnd_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.TurnEndRequest.fromBuffer(value),
        ($0.TurnEndResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FirstPlayerRequest, $0.FirstPlayerResponse>(
        'FirstPlayer',
        firstPlayer_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.FirstPlayerRequest.fromBuffer(value),
        ($0.FirstPlayerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.InitializeRequest, $0.InitializeResponse>(
        'InitializeClients',
        initializeClients_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InitializeRequest.fromBuffer(value),
        ($0.InitializeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatMessage, $0.ChatMessage>(
        'Chat',
        chat,
        true,
        true,
        ($core.List<$core.int> value) => $0.ChatMessage.fromBuffer(value),
        ($0.ChatMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GameMessage, $0.GameMessage>(
        'Game',
        game,
        true,
        true,
        ($core.List<$core.int> value) => $0.GameMessage.fromBuffer(value),
        ($0.GameMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$0.BoardMoveResponse> sendBoardMove_Pre($grpc.ServiceCall call, $async.Future<$0.BoardMoveRequest> request) async* {
    yield* sendBoardMove(call, await request);
  }

  $async.Stream<$0.GiveUpResponse> giveUp_Pre($grpc.ServiceCall call, $async.Future<$0.GiveUpRequest> request) async* {
    yield* giveUp(call, await request);
  }

  $async.Stream<$0.TurnEndResponse> turnEnd_Pre($grpc.ServiceCall call, $async.Future<$0.TurnEndRequest> request) async* {
    yield* turnEnd(call, await request);
  }

  $async.Stream<$0.FirstPlayerResponse> firstPlayer_Pre($grpc.ServiceCall call, $async.Future<$0.FirstPlayerRequest> request) async* {
    yield* firstPlayer(call, await request);
  }

  $async.Future<$0.InitializeResponse> initializeClients_Pre($grpc.ServiceCall call, $async.Future<$0.InitializeRequest> request) async {
    return initializeClients(call, await request);
  }

  $async.Stream<$0.BoardMoveResponse> sendBoardMove($grpc.ServiceCall call, $0.BoardMoveRequest request);
  $async.Stream<$0.GiveUpResponse> giveUp($grpc.ServiceCall call, $0.GiveUpRequest request);
  $async.Stream<$0.TurnEndResponse> turnEnd($grpc.ServiceCall call, $0.TurnEndRequest request);
  $async.Stream<$0.FirstPlayerResponse> firstPlayer($grpc.ServiceCall call, $0.FirstPlayerRequest request);
  $async.Future<$0.InitializeResponse> initializeClients($grpc.ServiceCall call, $0.InitializeRequest request);
  $async.Stream<$0.ChatMessage> chat($grpc.ServiceCall call, $async.Stream<$0.ChatMessage> request);
  $async.Stream<$0.GameMessage> game($grpc.ServiceCall call, $async.Stream<$0.GameMessage> request);
}
