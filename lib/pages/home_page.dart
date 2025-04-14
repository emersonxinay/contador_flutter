import 'package:flutter/material.dart';
import 'result_page.dart';
import '../widgets/contador_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  void aumentar() => setState(() => contador++);
  void disminuir() => setState(() => contador--);

  void navegarAResultado() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(valor: contador),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador Modular'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF4A00E0), Color(0xFF8E2DE2)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4A00E0), Color(0xFF8E2DE2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Valor actual: $contador',
                style: const TextStyle(fontSize: 28, color: Colors.white),
              ),
              const SizedBox(height: 20),
              ContadorButtons(
                onAumentar: aumentar,
                onDisminuir: disminuir,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: navegarAResultado,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                child: const Text('Ver en otra pantalla'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
