import 'package:flutter/material.dart';

class Answerbutton extends StatelessWidget {
  const Answerbutton({super.key, required this.onTapAnswer, required this.answer});
  final String answer;
  final void Function() onTapAnswer;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:onTapAnswer,style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ) , child: Text(answer,style: TextStyle(fontSize: 20),));
  }
}
