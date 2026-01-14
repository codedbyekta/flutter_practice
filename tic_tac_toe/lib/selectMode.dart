import 'package:flutter/material.dart';
import 'package:tic_tac_toe/cpu.dart';
import 'package:tic_tac_toe/two_player.dart';

class Selectmode extends StatefulWidget {
  const Selectmode({super.key});

  @override
  State<Selectmode> createState() => _SelectmodeState();
}

class _SelectmodeState extends State<Selectmode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SELECT MODE", style: TextStyle(color: Colors.black)),
        backgroundColor: const Color.fromARGB(255, 26, 220, 145),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 26, 220, 145),
              const Color.fromARGB(254, 88, 241, 6),
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/images/CPU.png", width: 120),

              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cpu()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: const Text("CPU"),
              ),

              const SizedBox(height: 40),
              Image.asset("assets/images/gamer.png", width: 120),

              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TwoPlayer()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: const Text("2 PLAYER"),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}




