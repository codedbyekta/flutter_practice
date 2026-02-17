import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/answerbutton.dart';
import 'package:quiz_app/data/ques_ans.dart';
import 'package:quiz_app/quiz_notifier.dart';
import 'package:quiz_app/result.dart';

class Quant extends StatelessWidget {
  const Quant({super.key});

  @override
  Widget build(BuildContext context) {
    final quiz = context.watch<QuizNotifier>();

    if (quiz.currentQuesIndex >= quantquesAns.length) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    final question = quantquesAns[quiz.currentQuesIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "QUANTITATIVE APTITUDE",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white)
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color.fromARGB(255, 196, 244, 244),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                question.question,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              ...question.options.map((ans) {
                return Answerbutton(
                  answer: ans,
                  onTapAnswer: () {
                    quiz.selectAnswer(question,ans);

                    if (quiz.currentQuesIndex == quantquesAns.length) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ResultScreen(totalQuestions: quantquesAns.length,),
                        ),
                      );
                    }
                  },
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
