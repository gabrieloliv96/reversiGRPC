import 'dart:convert';

import 'package:desktop_multi_window/desktop_multi_window.dart';
import 'package:flutter/material.dart';
import 'package:reversigrpc/page/game_page.dart';
import 'package:reversigrpc/widgets/chat_client_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(0, 99, 122, 204),
                  Colors.brown.withOpacity(0.9)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          TextButton(
            onPressed: () async {
              final window = await DesktopMultiWindow.createWindow(jsonEncode({
                'args1': 'Sub window',
                'args2': 100,
                'args3': true,
                'business': 'business_test',
              }));
              window
                ..setFrame(const Offset(0, 0) & const Size(1280, 720))
                ..center()
                ..setTitle('Player 2')
                ..show();
            },
            child: const Text('Abrir uma nova janela'),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 400,
                width: 400,
                child: ChatClient(),
              ),
              GamePage()
            ],
          ),
        ],
      ),
    );
  }
}
