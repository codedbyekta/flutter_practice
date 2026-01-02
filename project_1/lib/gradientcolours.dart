import 'package:flutter/material.dart';
import 'package:project_1/addtext.dart';

class Gradientcolours extends StatelessWidget {
  const Gradientcolours(this.calar, {super.key});
  final List<Color> calar;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(colors: calar,begin: Alignment.topLeft, end:Alignment.bottomRight)),
      child: Center(child: Addtext("hello")),
    );
  }
}
