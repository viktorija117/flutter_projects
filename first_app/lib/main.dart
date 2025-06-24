import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 148, 115, 205),
        body: GradientContainer(
          colors: [
            const Color.fromARGB(255, 21, 10, 40),
            const Color.fromARGB(255, 82, 59, 143),
            const Color.fromARGB(255, 184, 152, 239),
          ],
        ),
      ),
    ),
  ); // Obavezno
}
