// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pet_page.dart';

class QrCode extends StatefulWidget {
  // PetPage({Key? key, required this.pet}) : super(key: key);

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 60.0, top: 10),
            child: SizedBox(
              child: Text("QR Code Pet"),
            ),
          ),
        ),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/qrcode.png',
          height: 230,
          width: 230,
        ),
      ),
    );
  }
}
