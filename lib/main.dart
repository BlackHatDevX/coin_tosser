import 'package:coin_tosser/coin_flipper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 150, 5, 5),
            Color.fromARGB(255, 109, 6, 6)
          ], end: Alignment.topLeft, begin: Alignment.bottomRight)),
          child: const Center(
            child: CoinFlipper(),
          ),
        ),
      ),
    );
  }
}
