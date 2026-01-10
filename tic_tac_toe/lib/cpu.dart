import 'package:flutter/material.dart';

class Cpu extends StatefulWidget {
  const Cpu({super.key});

  @override
  State<Cpu> createState() => _CpuState();
}

class _CpuState extends State<Cpu> {
  List gridValues = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List LeftValues = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List winnings = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],
  ];
  var playerChoice = "X";
  var cpuChoice = "0";
  var isClicked = 0;

  winnerCheck() {
    winnings.forEach((value) {
      if (gridValues[value[0]] == playerChoice &&
          gridValues[value[1]] == playerChoice &&
          gridValues[value[2]] == playerChoice) {
        print("Winner");
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TIC TAC TOE"),
        backgroundColor: const Color.fromARGB(255, 26, 220, 145),
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: gridValues.length,
          itemBuilder: (context, index) {
            return ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
              child: Text(
                gridValues[index].toString(),
                style: TextStyle(fontSize: 30),
              ),
            );
          },
        ),
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
      ),
    );
  }
}

