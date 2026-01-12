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
  String winner = "";

  winnerCheck(choice) {
    winnings.forEach((value) {
      if (gridValues[value[0]] == choice &&
          gridValues[value[1]] == choice &&
          gridValues[value[2]] == choice) {
        print("$choice is the Winner");
        winner = choice;
      } else if (LeftValues.isEmpty) {
        print("Draw");
      }
    });
  }

  cpuMove() {
    LeftValues.shuffle();
    var value = LeftValues[0];
    gridValues[gridValues.indexOf(value)] = cpuChoice;
    LeftValues.remove(value);
    winnerCheck(cpuChoice);
  }

  playerMove(index) {
    {
      LeftValues.remove(gridValues[index]);
      gridValues[index] = playerChoice;
      winnerCheck(playerChoice);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TIC TAC TOE"),
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
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: gridValues.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    onPressed: (winner.isEmpty)
                        ? () {
                            setState(() {
                              if ((gridValues[index] == playerChoice) ||
                                  (gridValues[index] == cpuChoice)) {
                              } else {
                                playerMove(index);
                                cpuMove();
                              }
                            });
                          }
                        : () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        gridValues[index].toString(),
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 300,
              child: Text(
                "Hey winner is $winner",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



