import 'package:flutter/material.dart';
import 'package:quiz_app/data/ques_ans.dart';

class QuizNotifier extends ChangeNotifier {
  int currentQuesIndex = 0;
  List userAnswer = [];
  int correctCount = 0; 
  changeQA(String ans){
    userAnswer.add([logquesAns[currentQuesIndex].question,ans]);
    currentQuesIndex++;
    print(userAnswer);
    notifyListeners();
  }

  totalCorrect(){
    print(userAnswer);
    for(int i=0;i<userAnswer.length;i++){
      if(userAnswer[i][1]==logquesAns[i].answer[0]){
        print(":hey");
          correctCount++;
      }
    }
    notifyListeners();
    return correctCount;
  }
        

}
