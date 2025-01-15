import 'dart:math';

import 'package:grpc/grpc.dart';
import '../generated/reversi.pb.dart'; // Importa as mensagens geradas
import '../generated/reversi.pbgrpc.dart'; // Importa o stub gerado

class GrpcClient {
  static final GrpcClient _instance = GrpcClient._internal();
  late ClientChannel _channel;
  late ReversiGameServiceClient _stub;

  // Construtor privado
  GrpcClient._internal();

  // Fábrica para obter a instância única
  factory GrpcClient() {
    return _instance;
  }

  // Inicializa o canal e o stub, caso ainda não estejam configurados
  Future<void> init(String message) async {
    _channel = ClientChannel(
      'localhost', // Endereço do servidor gRPC
      port: 50051, // Porta do servidor
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );

    _stub = ReversiGameServiceClient(_channel);

    try {
      print('Tentando conectar com o uid');
      final response = await _stub.initializeClients(
        InitializeRequest()..playerName = 'Inicializar',
      );

      print('Jogador ID: ${response.playerId}');
    } catch (e) {}
  }

  // Método para obter o stub e fazer a comunicação com o servidor
  ReversiGameServiceClient get stub {
    return _stub;
  }

  // Método para fechar a conexão
  Future<void> close() async {
    await _channel.shutdown();
  }

  // Enviar um movimento no tabuleiro (streaming)
  Stream<BoardMoveResponse> sendBoardMove(int boardH, int boardV) async* {
    try {
      final request = BoardMoveRequest()
        ..boardH = boardH
        ..boardV = boardV;
      await for (var response in stub.sendBoardMove(request)) {
        yield response;
      }
    } catch (e) {
      rethrow;
    }
  }

  // Jogador desiste (streaming)
  Stream<GiveUpResponse> giveUp(String playerColor) async* {
    try {
      final request = GiveUpRequest()..playerColor = playerColor;
      await for (var response in stub.giveUp(request)) {
        yield response;
      }
    } catch (e) {
      rethrow;
    }
  }

  // Indica que o turno do jogador terminou (streaming)
  Stream<TurnEndResponse> turnEnd(int playerTurn) async* {
    try {
      final request = TurnEndRequest()..playerTurn = playerTurn;
      await for (var response in stub.turnEnd(request)) {
        yield response;
      }
    } catch (e) {
      rethrow;
    }
  }

  // Define o primeiro jogador (streaming)
  Stream<FirstPlayerResponse> firstPlayer(int playerTurn) async* {
    try {
      final request = FirstPlayerRequest()..playerTurn = playerTurn;
      await for (var response in stub.firstPlayer(request)) {
        yield response;
      }
    } catch (e) {
      rethrow;
    }
  }
}
