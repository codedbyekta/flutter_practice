import 'package:flutter/material.dart';
import 'dart:math';

class ScreenTwoColumn extends StatefulWidget {
  const ScreenTwoColumn({super.key});

  @override
  State<ScreenTwoColumn> createState() => _ScreenTwoColumnState();
}

class _ScreenTwoColumnState extends State<ScreenTwoColumn> {
  int currentDiceFace = 1;
  void rollDice() {
    setState(() {
      currentDiceFace = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Image.asset(
              "assets/images/dice_$currentDiceFace.png",
              width: 150,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: rollDice,
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.black),
            ),
            child: Text(
              "ROLL!!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
