import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/data/ques_ans.dart';
import 'package:quiz_app/quiz_notifier.dart';

class Result extends StatelessWidget {
  Result({super.key, required this.last_ans});
  String last_ans;
  @override
  Widget build(BuildContext context) {
    var ob = Provider.of<QuizNotifier>(context);
    ob.userAnswer.add([logquesAns[logquesAns.length - 1].question, last_ans]);
    return Scaffold(
      appBar: AppBar(title: Text("RESULT")),
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
              Text(
                "TOTAL QUESTIONS : ${logquesAns.length}",
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                onPressed: () {
                  ob.totalCorrect();
                },
                child: Text("CALCULATE RESULT"),
              ),
              Text("CORRECT ANSWER : ${ob.correctCount}"),
            ],
          ),
        ),
      ),
    );
  }
}



