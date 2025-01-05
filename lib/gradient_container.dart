import 'package:flutter/material.dart';
import 'package:solitaire/solitaire_roller.dart';

class GradientContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 67, 19, 139)
          ],
        ),
      ),
      child: Center(
        child: SolitaireRoller(),
      ),
    );
  }
}
