import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/quiz_notifier.dart';
import 'package:quiz_app/screens/startscreen.dart';

void main() {
  runApp(
    // MaterialApp(
    // debugShowCheckedModeBanner: false,
    // home: Startscreen())
    MultiProvider(
      providers: [
        ChangeNotifierProvider<QuizNotifier>(create: (_) => QuizNotifier()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Startscreen(),
      ),
    ),
  );
}
