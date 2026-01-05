import 'package:flutter/material.dart';

class Selectmode extends StatefulWidget {
  const Selectmode({super.key});

  @override
  State<Selectmode> createState() => _SelectmodeState();
}

class _SelectmodeState extends State<Selectmode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar: AppBar(
        title: Text(
          "TIC TAC TOE",
          style: TextStyle(
            fontFamily: "DancingScript",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),);
  }
}