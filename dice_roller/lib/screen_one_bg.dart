import 'package:dice_roller/screen_one_column.dart';
import 'package:flutter/material.dart';

class ScreenOneBg extends StatefulWidget {
  const ScreenOneBg(this.gotonextscreen, this.colours, {super.key});
  final List<Color> colours;
  final Function gotonextscreen;

  @override
  State<ScreenOneBg> createState() => _ScreenOneBgState();
}

class _ScreenOneBgState extends State<ScreenOneBg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.colours,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: ScreenOneColumn(widget.gotonextscreen, "DICE ROLLER"),
      ),
    );
  }
}
