import 'package:flutter/material.dart';

class Answerbutton extends StatelessWidget {
  const Answerbutton({
    super.key,
    required this.onTapAnswer,
    required this.answer,
  });

  final String answer;
  final VoidCallback onTapAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        onPressed: onTapAnswer,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
        child: Text(
          answer,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
