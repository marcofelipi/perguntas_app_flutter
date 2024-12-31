import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Azul', 'Verde'],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Leão', 'Coelho', 'Tartaruga', 'Sapo'],
      },
      {
        'texto': 'Qual é o seu time?',
        'respostas': ['Grêmio', 'Inter', 'Juventude', 'Caxias'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Perguntas',
            style: TextStyle(color: Colors.white.withOpacity(0.9)),
          ),
          backgroundColor: Color.fromARGB(255, 79, 0, 175),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto']?.toString() ??
                'Pergunta desconhecida'),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
