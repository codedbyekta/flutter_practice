import 'package:flutter/material.dart';

class Logical extends StatefulWidget {
  const Logical({super.key});

  @override
  State<Logical> createState() => _LogicalState();
}

class _LogicalState extends State<Logical> with SingleTickerProviderStateMixin {
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
        title: Text("LOGICAL APTITUDE", style: TextStyle(color: Colors.white)),
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
