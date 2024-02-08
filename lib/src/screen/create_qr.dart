import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CreateQR extends StatefulWidget {
  const CreateQR({Key? key}) : super(key: key);
  @override
  State<CreateQR> createState() => _CreateQRState();
}

class _CreateQRState extends State<CreateQR> {
  String data = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: QrImageView(
                data: data, backgroundColor: Colors.white, size: 250),
          ),
          const SizedBox(height: 70),
          SizedBox(
            width: 250,
            child: TextField(
              onChanged: (value) {
                setState(() {
                  data = value;
                });
              },
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  hintText: "Text the Data",
                  filled: true,
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
