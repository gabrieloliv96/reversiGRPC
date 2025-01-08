import 'dart:async';

import 'package:flutter/material.dart';
import 'package:reversigrpc/enum/grpc_events.dart';
import 'package:reversigrpc/enum/message.dart';
import 'package:reversigrpc/generated/reversi.pb.dart';
import 'package:reversigrpc/services/grpc.dart';

class ChatClient extends StatefulWidget {
  const ChatClient({
    super.key,
  });

  @override
  State<ChatClient> createState() => _ChatClientState();
}

class _ChatClientState extends State<ChatClient> {
  final TextEditingController _textController = TextEditingController();
  late GrpcClient _client;
  final FocusNode _messageFocusNode = FocusNode();
  List<Message> mensagens = [];
  late StreamController<ChatMessage> _chatStreamController;

  @override
  void initState() {
    _client = GrpcClient(); // Instanciando o Singleton
    _initializeGrpcClient();
    _chatStreamController = StreamController<ChatMessage>();
    _startChatStream();
    // _handleReceviedMessages();
    super.initState();
  }

  Future<void> _initializeGrpcClient() async {
    await _client.init('Chat inicializado');
  }

  void _startChatStream() async {
    final call = _client.stub.chat(_chatStreamController.stream);

    // Enviar mensagens do cliente para o servidor
    await for (var message in call) {
      setState(() {
        mensagens.add(Message(mensagem: message.content, isSent: false));
      });
    }
  }

  void _sendMessage(String content) {
    final message = ChatMessage()
      ..sender = 'Cliente 1' // Substitua pelo nome do usuário
      ..content = content;

    // Enviar a mensagem através do fluxo
    _chatStreamController.add(message);
    setState(() {
      mensagens.add(Message(mensagem: message.content, isSent: true));
    });
  }
  //  void _sendMessage() {
  //   if (_textController.text.isNotEmpty) {
  //     mensagens.add(
  //       Message(mensagem: _textController.text),
  //     );
  //     _client.sendMessage(message: _textController.text);
  //     _textController.clear();
  //     _messageFocusNode.requestFocus();
  //     setState(() {});
  //   }
  // }

  // Future<void> _handleReceviedMessages() async {
  //   final response = await _client.stub.sendMessage(
  //     MessageRequest()..
  //   );
  //   setState(() {
  //     mensagens.add(Message(mensagem: response.reply));
  //   });
  //   // _client.socket.on(
  //   //   GrpcEvents.message.event,
  //   //   (message) {
  //   //     setState(
  //   //       () {
  //   //         mensagens.add(
  //   //           Message(
  //   //             mensagem: message,
  //   //             isSent: false,
  //   //           ),
  //   //         );
  //   //       },
  //   //     );
  //   //   },
  //   // );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFE5DDD5),
            Color(0xFFB5B5B5),
          ],
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: mensagens.length,
              itemBuilder: (BuildContext context, int index) {
                return Wrap(
                  alignment: mensagens[index].isSent
                      ? WrapAlignment.end
                      : WrapAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                        color: mensagens[index].isSent
                            ? Colors.blueAccent
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Text(
                        mensagens[index].mensagem,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          const Divider(
            height: 1.0,
            color: Colors.blueAccent,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  onSubmitted: (value) {
                    _sendMessage(_textController.text);
                  },
                  controller: _textController,
                  focusNode: _messageFocusNode,
                  decoration: const InputDecoration(
                    hintText: 'Escreva uma mensagem!',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  _sendMessage(_textController.text);
                },
                child: const Row(
                  children: [
                    Icon(Icons.send),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // void _sendMessage() {
  //   if (_textController.text.isNotEmpty) {
  //     mensagens.add(
  //       Message(mensagem: _textController.text),
  //     );
  //     _client.sendMessage(message: _textController.text);
  //     _textController.clear();
  //     _messageFocusNode.requestFocus();
  //     setState(() {});
  //   }
  // }
}
