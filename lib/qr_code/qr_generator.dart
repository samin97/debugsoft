import 'package:debugsoft/main_screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../reuse/custom_text_field.dart';

class QRGenerator extends StatefulWidget {
  const QRGenerator({Key? key}) : super(key: key);

  @override
  _QRGeneratorState createState() => _QRGeneratorState();
}

class _QRGeneratorState extends State<QRGenerator> {


  TextEditingController qrController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'QR generator',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: "Lobster",
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Route newRoute = MaterialPageRoute(builder: (_) => HomeScreen());
            Navigator.pushReplacement(context, newRoute);
          },
        ),
      ),
      body: Container(
        color: Colors.black12,
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QrImage(data: qrController.text, size: 300, backgroundColor: Colors.white,),
                const SizedBox(height: 30,),
                    CustomTextField(
                      data: Icons.qr_code,
                      controller: qrController,
                      hintText: "QR text",
                      isObsecre: false,
                    ),
                    const SizedBox(width: 12),
                    FloatingActionButton(
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(Icons.done, size: 30),
                      onPressed: () => setState(() {}),
                    )
                  ],
                )
            ),
          ),
      ),
      );


  }
}
