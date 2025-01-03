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

  final _perguntas = const [
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

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String>? respostas = temPerguntaSelecionada
        ? (_perguntas[_perguntaSelecionada]['respostas'] as List<dynamic>)
            .cast<String>()
        : []; //if ? perguntas selecionadas... else : [] que é null
    List<Widget> widgets =
        respostas.map((t) => Resposta(t, _responder)).toList();

    // for (String textoResp)
    //     in perguntas[_perguntaSelecionada].cast()['widgets']) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }

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
            Questao(_perguntas[_perguntaSelecionada]['texto']?.toString() ??
                'Pergunta desconhecida'),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
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
