import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class CoinFlipper extends StatefulWidget {
  const CoinFlipper({super.key});

  @override
  State<CoinFlipper> createState() {
    return _CoinFlipperState();
  }
}

class _CoinFlipperState extends State<CoinFlipper> {
  var coinImg = "assets/images/1.png";
  void flip() {
    var imgNum = randomizer.nextInt(2) + 1;
    setState(() {
      coinImg = "assets/images/$imgNum.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          coinImg,
          height: 200,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: flip,
          style: ButtonStyle(
              shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)))),
          child: const Text(
              style: TextStyle(
                  fontSize: 28, color: Color.fromARGB(255, 68, 53, 53)),
              "FLIP COIN"),
        )
      ],
    );
  }
}
