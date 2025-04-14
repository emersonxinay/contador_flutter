import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int valor;

  const ResultPage({super.key, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultado')),
      body: Center(
        child: Text(
          'Valor recibido: $valor',
          style: const TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}
