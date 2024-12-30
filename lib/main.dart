import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text('Perguntas'),
              backgroundColor: Color.fromARGB(255, 21, 242, 21)),
          body: Text('Olá flutter.')),
    );
  }
}
