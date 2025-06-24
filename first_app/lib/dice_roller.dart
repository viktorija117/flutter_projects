import 'package:flutter/material.dart';
import 'dart:math';

final Random randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoll = 2;
  void RollDice() {
    setState(() {
      // Random().nextInt(6); --> 0 <> 5
      diceRoll = randomizer.nextInt(6) + 1; // 1 <> 6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$diceRoll.png', width: 200),
        const SizedBox(height: 20),
        TextButton(
          onPressed: RollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
