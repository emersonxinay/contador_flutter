import 'package:flutter/material.dart';

class ContadorButtons extends StatelessWidget {
  final VoidCallback onAumentar;
  final VoidCallback onDisminuir;

  const ContadorButtons({
    super.key,
    required this.onAumentar,
    required this.onDisminuir,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onAumentar,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(12),
            elevation: 6,
          ),
          child: const Text('+', style: TextStyle(fontSize: 20)),
        ),
        const SizedBox(width: 12),
        ElevatedButton(
          onPressed: onDisminuir,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(12),
            elevation: 6,
          ),
          child: const Text('-', style: TextStyle(fontSize: 20)),
        ),
      ],
    );
  }
}
