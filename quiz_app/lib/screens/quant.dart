import 'package:flutter/material.dart';

class Quant extends StatefulWidget {
  const Quant({super.key});

  @override
  State<Quant> createState() => _QuantState();
}

class _QuantState extends State<Quant>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/quiz.png"),
        title: Text("QUANTITATIVE APTITUDE", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              const Color.fromARGB(255, 196, 244, 244),
              const Color.fromARGB(255, 196, 244, 244),
              const Color.fromARGB(255, 196, 244, 244),
              const Color.fromARGB(255, 196, 244, 244),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
      ),
    );
  }
}