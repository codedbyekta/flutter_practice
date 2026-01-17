import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_screen.dart';

class Startscreen extends StatefulWidget {
  const Startscreen({super.key});

  @override
  State<Startscreen> createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 12, 78, 234),
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
              Image.asset("assets/images/tictactoe.png", width: 300),

              Center(
                child: Text(
                  "QUIZ",
                  style: TextStyle(
                    fontFamily: "DancingScript",
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: Text(
                  "Start",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}