import 'dart:io';

import 'package:flutter/material.dart';
import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:image_picker/image_picker.dart';
class BarCode extends StatefulWidget {
  const BarCode({super.key});

  @override
  State<BarCode> createState() => _BarCodeState();
}

class _BarCodeState extends State<BarCode> {
  String result = "";
  final ImagePicker picker = ImagePicker();

  Future<void> scanBarCode() async
  { 
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if(pickedFile != null)
    {
       File img = File(pickedFile.path);
       BarcodeScanner.scan(options: ScanOptions(useCamera: -1)
       path: img.path); 
       
    }
    pickedFile = file(PickedFile.path);
  }
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


