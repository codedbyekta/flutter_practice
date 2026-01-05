import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.amberAccent, const Color.fromARGB(254, 88, 241, 6)],
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
                  "TIC TAC TOE",
                  style: TextStyle(
                    fontFamily: "DancingScript",
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: Colors.black,foregroundColor: Colors.white),
                child: Text("Start", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
