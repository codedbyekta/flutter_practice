import 'package:flutter/material.dart';

class Addtext extends StatelessWidget {
  const Addtext(this.txt,{super.key});
  final String txt;
  @override
  Widget build(context) {
    return Text(txt);
  }
}