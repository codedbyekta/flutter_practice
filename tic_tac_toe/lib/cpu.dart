import 'package:flutter/material.dart';

class Cpu extends StatefulWidget {
  const Cpu({super.key});

  @override
  State<Cpu> createState() => _CpuState();
}

class _CpuState extends State<Cpu> {
  List gridValues = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List LeftValues = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List colorList = [
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];
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
    bool isWinner = false;
    winnings.forEach((value) {
      if (gridValues[value[0]] == choice &&
          gridValues[value[1]] == choice &&
          gridValues[value[2]] == choice) {
        print("$choice is the Winner");
        winner = choice;
        isWinner = true;
      }
    });
    if (!isWinner && LeftValues.isEmpty) {
      print("Draw");
      winner = "Draw";
    }
  }

  cpuMove() {
    LeftValues.shuffle();
    var value = LeftValues[0];
    colorList[gridValues.indexOf(value)] = const Color.fromARGB(
      253,
      237,
      61,
      61,
    );
    gridValues[gridValues.indexOf(value)] = cpuChoice;
    LeftValues.remove(value);
    winnerCheck(cpuChoice);
  }

  playerMove(index) {
    {
      colorList[index] = const Color.fromARGB(255, 26, 220, 145);
      LeftValues.remove(gridValues[index]);
      gridValues[index] = playerChoice;
      winnerCheck(playerChoice);
    }
  }

  void resetGame() {
    setState(() {
      gridValues = [1, 2, 3, 4, 5, 6, 7, 8, 9];
      LeftValues = [1, 2, 3, 4, 5, 6, 7, 8, 9];
      colorList = [
        Colors.black,
        Colors.black,
        Colors.black,
        Colors.black,
        Colors.black,
        Colors.black,
        Colors.black,
        Colors.black,
        Colors.black,
      ];
      winner = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TIC TAC TOE",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
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
                  return Center(
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: (winner.isEmpty)
                            ? () {
                                setState(() {
                                  if ((gridValues[index] == playerChoice) ||
                                      (gridValues[index] == cpuChoice)) {
                                  } else {
                                    playerMove(index);
                                    if (LeftValues.isNotEmpty) {
                                      cpuMove();
                                    }
                                  }
                                });
                              }
                            : () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            colorList[index],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            gridValues[index].toString(),
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 150,
              child: Text(
                (winner != "Draw") ? "Hey winner is $winner" : "GAME DRAW!!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: resetGame,
        backgroundColor: Colors.black,
        child: Icon(Icons.restart_alt, color: Colors.white),
      ),
    );
  }
}






