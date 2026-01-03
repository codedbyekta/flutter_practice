import 'package:flutter/material.dart';
import 'package:project_2/addtext.dart';

class Gradientcolour extends StatefulWidget {
  const Gradientcolour(this.colours, {super.key});
  final List<Color> colours;

  @override
  State<Gradientcolour> createState() => _GradientcolourState();
}

class _GradientcolourState extends State<Gradientcolour> {
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
      child: Center(child: Addtext("Good Luck✨")),
    );
  }
}
