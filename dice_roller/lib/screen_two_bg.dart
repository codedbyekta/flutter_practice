import 'package:dice_roller/screen_two_column.dart';
import 'package:flutter/material.dart';

class ScreenTwoBg extends StatefulWidget {
  const ScreenTwoBg({super.key});

  @override
  State<ScreenTwoBg> createState() => _ScreenTwoBgState();
}

class _ScreenTwoBgState extends State<ScreenTwoBg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purpleAccent,
              Colors.deepPurple,
              Colors.purpleAccent,
              Colors.deepPurple,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ScreenTwoColumn(),
      ),
    );
  }
}
