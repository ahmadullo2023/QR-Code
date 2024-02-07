import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
