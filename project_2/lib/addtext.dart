import 'package:flutter/material.dart';

class Addtext extends StatefulWidget {
  const Addtext(this.txt, {super.key});
  final String txt;

  @override
  State<Addtext> createState() => _AddtextState();
}

class _AddtextState extends State<Addtext> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/goodjob.png"),
        Text(
          widget.txt,
            style:  TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: "Edu VIC WA NT Hand Precursive"
          
        
            
          ),
          
          
        ),
        SizedBox(
          width: 100,
          height: 30,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.black),
              
              
            ),
              child: Text(
                "NEXT",
                style: TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            
          ),
        ),
      ],
    );
  }
}
