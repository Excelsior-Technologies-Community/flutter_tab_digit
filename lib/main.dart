import 'package:flutter/material.dart';
import 'package:flutter_tab_digit/flutter_tab_digit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: PinScreen());
  }
}

class PinScreen extends StatelessWidget {
  const PinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Enter PIN")),
      body: Center(
        child: TabDigitInput(
          onCompleted: (pin) {
            debugPrint("PIN Entered: $pin");
          },
        ),
      ),
    );
  }
}
