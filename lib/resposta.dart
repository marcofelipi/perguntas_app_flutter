import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String r;

  Resposta(this.r);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: Text(r),
        onPressed: null,
      ),
    );
  }
}
