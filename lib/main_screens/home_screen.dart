import 'package:debugsoft/qr_code/qr_generator.dart';
import 'package:debugsoft/qr_code/qr_scanner.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Homepage',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: "Lobster",
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: const Text(
                      "QR code generator",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 10),
                    ),
                    onPressed: () {
                      Route newRoute = MaterialPageRoute(
                          builder: (_) => const QRGenerator());
                      Navigator.pushReplacement(context, newRoute);
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    child: const Text(
                      "QR code scanner",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 10),
                    ),
                    onPressed: () {
                      Route newRoute = MaterialPageRoute(
                          builder: (_) => const QRScanner());
                      Navigator.pushReplacement(context, newRoute);
                    },
                  ),
            ],
          ),
        ),
      )
    );
  }
}
