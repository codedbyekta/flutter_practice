import 'package:flutter/material.dart';
import 'package:quiz_app/data/ques_ans.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("RESULT"),),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 12, 78, 234),
              Colors.cyanAccent,
              const Color.fromARGB(253, 242, 244, 241),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            

            ],
          ),
        ),
      ),
    );
  }
}

