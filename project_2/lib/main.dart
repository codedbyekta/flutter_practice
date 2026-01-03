import 'package:flutter/material.dart';
import 'package:project_2/gradientcolour.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Gradientcolour([
          Colors.deepPurple,
          Colors.cyanAccent,
          const Color.fromARGB(255, 80, 77, 255),
        ]),
      ),
    ),
  );
}
