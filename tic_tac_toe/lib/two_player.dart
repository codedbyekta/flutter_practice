import 'package:flutter/material.dart';

class TwoPlayer extends StatefulWidget {
  const TwoPlayer({super.key});

  @override
  State<TwoPlayer> createState() => _TwoPlayerState();
}

class _TwoPlayerState extends State<TwoPlayer> {
  List gridValues = [1, 2, 3, 4, 5, 6, 7, 8, 9];
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
  var player1Choice = "X";
  var player2Choice = "0";
  bool isplayer1Turn = true;
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

    if (!isWinner) {
      bool Draw = true;
      for (var v in gridValues) {
        if (v is int) {
          Draw = false;
          break;
        }
      }
      if (Draw) {
        winner = "Draw";
        print("Draw");
      }
    }
  }

  player2Move(index) {
    {
      colorList[index] = const Color.fromARGB(253, 237, 61, 61);
      gridValues[index] = player2Choice;
      winnerCheck(player2Choice);
    }
  }

  player1Move(index) {
    {
      colorList[index] = const Color.fromARGB(255, 26, 220, 145);
      gridValues[index] = player1Choice;
      winnerCheck(player1Choice);
    }
  }

void resetGame() {
    setState(() {
      gridValues = [1, 2, 3, 4, 5, 6, 7, 8, 9];
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
      isplayer1Turn = true;
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
                                  if ((gridValues[index] == player1Choice) ||
                                      (gridValues[index] == player2Choice)) {
                                  } else {
                                    if (isplayer1Turn) {
                                      player1Move(index);
                                    }
                                    else{
                                      player2Move(index);
                                    }
                                    isplayer1Turn = !isplayer1Turn;

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
                (winner.isEmpty) ?"Turn:${isplayer1Turn ? "Player X":"Player 0"}":(winner == "Draw"?"GAME DRAW!!":"Hey winner is $winner"),
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
