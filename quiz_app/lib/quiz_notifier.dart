import 'package:flutter/material.dart';
import 'package:quiz_app/model/question_model.dart';

class QuizNotifier extends ChangeNotifier {
  int currentQuesIndex = 0;
  int correctCount = 0;
  final List<String> userAnswers = [];

  void selectAnswer(Question question, String selectedAnswer) {
    userAnswers.add(selectedAnswer);

    if (selectedAnswer == question.correctAnswer) {
      correctCount++;
    }

    currentQuesIndex++;
    notifyListeners();
  }

  bool isQuizFinished(int totalQuestions) {
    return currentQuesIndex >= totalQuestions;
  }

  void resetQuiz() {
    currentQuesIndex = 0;
    correctCount = 0;
    userAnswers.clear();
    notifyListeners();
  }
}

        


}
