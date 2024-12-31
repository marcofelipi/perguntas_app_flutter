import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String r;
  final void Function() quandoSelecionado;

  Resposta(this.r, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: Text(r),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
