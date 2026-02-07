import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/answerbutton.dart';
import 'package:quiz_app/data/ques_ans.dart';
import 'package:quiz_app/quiz_notifier.dart';

class Logical extends StatefulWidget {
  const Logical({super.key});

  @override
  State<Logical> createState() => _LogicalState();
}

class _LogicalState extends State<Logical> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int currentQuesIndex = 0;
  late String currQues;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // currQues = logquesAns[currentQuesIndex].question;
    var ob = Provider.of<QuizNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/quiz.png"),
        title: Text("LOGICAL APTITUDE", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              const Color.fromARGB(255, 196, 244, 244),
              const Color.fromARGB(255, 196, 244, 244),
              const Color.fromARGB(255, 196, 244, 244),
              const Color.fromARGB(255, 196, 244, 244),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              logquesAns[ob.currentQuesIndex].question,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            ...logquesAns[ob.currentQuesIndex].answer.map((ans) {
              return Answerbutton(
                onTapAnswer: () {
                  ob.changeQA(ans);
                },
                answer: ans,
              );
            }),
          ],
        ),
      ),
    );
  }
}



