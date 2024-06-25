import 'package:flutter/material.dart';

class Startscreen extends StatelessWidget {
  const Startscreen(this.startquiz, {super.key});

  final void Function() startquiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/logo.png',
          width: 300,
        ),
        const SizedBox(
          height: 100,
        ),
        const Text(
          'QUIZ!',
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
        const SizedBox(height: 50),
        OutlinedButton.icon(
          onPressed: () {
            startquiz();
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.red,
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'start quiz',
          ),
        ),
      ],
    ));
  }
}
