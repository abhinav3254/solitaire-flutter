import 'package:flutter/material.dart';
import 'dart:math';

class SolitaireRoller extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SolitaireRoller();
  }
}

class _SolitaireRoller extends State<SolitaireRoller> {
  var image = 'assets/images/king.png';
  String num = "";

  handleButtonPress() {
    Random random = new Random();

    setState(() {
      int randomNumber = random.nextInt(2);
      num = randomNumber.toString();
      if (randomNumber == 0) {
        image = 'assets/images/queen.png';
      } else {
        image = 'assets/images/king.png';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          image,
          width: 200,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          num,
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(onPressed: handleButtonPress, child: Text('data')),
      ],
    );
  }
}
