import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/quiz_notifier.dart';

class ResultScreen extends StatelessWidget {
  final int totalQuestions;

  const ResultScreen({
    super.key,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    final quiz = context.watch<QuizNotifier>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("RESULT"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 12, 78, 234),
              Colors.cyanAccent,
              Color.fromARGB(253, 242, 244, 241),
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
                "TOTAL QUESTIONS : $totalQuestions",
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 10),
              Text(
                "CORRECT ANSWERS : ${quiz.correctCount}",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  quiz.resetQuiz();
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: const Text("RESTART QUIZ"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


