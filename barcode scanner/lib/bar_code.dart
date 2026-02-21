import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarCode extends StatefulWidget {
  const BarCode({super.key});

  @override
  State<BarCode> createState() => _BarCodeState();
}

class _BarCodeState extends State<BarCode> {
  String barcode = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BARCODE SCANNER", style: TextStyle(fontSize: 24)),
      ),
      body: Container(
        child: Column(
          children: [
            MobileScanner(
              onDetect: (barcodes) {
                setState(() {
                  this.barcode = barcode.toString() ?? "barcode not detected";
                });
              },
            ),
            Text("Barcode = $barcode"),
          ],
        ),
      ),
    );
  }
}
