import 'package:flutter/material.dart';

class ScreenOneColumn extends StatefulWidget {
  const ScreenOneColumn(this.next, this.txt, {super.key});
  final String txt;
  final Function next;

  @override
  State<ScreenOneColumn> createState() => _ScreenOneColumnState();
}

class _ScreenOneColumnState extends State<ScreenOneColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/Untitled_design-removebg-preview.png",
          width: 350,
        ),
        Text(
          widget.txt,
          style: TextStyle(
            fontFamily: "Alfa Slab One",
            fontSize: 35,
            color: Colors.black,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            widget.next();
          },
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.black),
          ),
          child: Text(
            "Next",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
