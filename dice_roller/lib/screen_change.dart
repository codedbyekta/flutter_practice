import 'package:dice_roller/screen_one_bg.dart';
import 'package:dice_roller/screen_two_bg.dart';
import 'package:flutter/material.dart';

class ScreenChange extends StatefulWidget {
  const ScreenChange({super.key});

  @override
  State<ScreenChange> createState() => _ScreenChangeState();
}

class _ScreenChangeState extends State<ScreenChange> {
  var currentscreen = "home";

  void changescreen() {
    setState(() {
      currentscreen = "screen-two";
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentscreen == "home") {
      return ScreenOneBg(changescreen, [
        Colors.pinkAccent,
        Colors.deepPurple,
        Colors.purpleAccent,
        Colors.deepPurple,
        Colors.pinkAccent,
      ]);
    }
    return const ScreenTwoBg();
  }
}
