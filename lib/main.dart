import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta respondida.');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text('Perguntas'),
              backgroundColor: Color.fromARGB(255, 21, 242, 21)),
          body: Column(
            children: [
              Text(perguntas[0]),
              ElevatedButton(
                child: Text('Resposta 1'),
                onPressed: responder,
              ),
              ElevatedButton(
                child: Text('Resposta 2'),
                onPressed: responder,
              ),
              ElevatedButton(
                  child: Text('Resposta 3'),
                  onPressed: () {
                    print('Pergunta respondida');
                  }),
              ElevatedButton(
                child: Text('Resposta 4'),
                onPressed: () => print('Pergunta respondida'),
              ),
            ],
          )),
    );
  }
}
