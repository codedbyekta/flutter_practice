import 'package:flutter/material.dart';

class Cpu extends StatefulWidget {
  const Cpu({super.key});

  @override
  State<Cpu> createState() => _CpuState();
}

class _CpuState extends State<Cpu> {
  List gridValues = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  var playerChoice = "X";
  var cpuChoice = "0";
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
