import 'package:flutter/material.dart';
import 'package:qr_code/src/screen/create_qr.dart';
import 'package:qr_code/src/screen/scan_qr.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ElevatedButton(
               onPressed: (){
                 Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder: (Builder) => const CreateQR(),
                     ));
               },
               child: Text("Create a QR code"),
           ),
           ElevatedButton(
             onPressed: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (Builder) => const QRViewExample(),
                   ));
                },
             child: Text("Scan the QR code"),
           ),
         ],
       )
     )
    );
  }
}
