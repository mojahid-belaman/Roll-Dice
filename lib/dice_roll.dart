import 'dart:math';
import 'package:flutter/material.dart';

final memoizeRandom = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoll> {
  var currentRollDice = 2;

  riceImage() {
    setState(() {
      // Random number between 1 and 6 (inclusive) to roll dice
      currentRollDice = memoizeRandom.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentRollDice.png',
          width: 200,
        ),
        TextButton(
          onPressed: riceImage,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
          child: const Text(
            'Roll Dice',
          ),
        )
      ],
    );
  }
}
