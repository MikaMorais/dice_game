import 'package:flutter/material.dart';
import 'package:dice_game/dice_controller.dart';
import 'package:dice_game/dice_screen.dart';
import 'package:provider/provider.dart';

class DiceGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<DiceController>(
      create: (context) => DiceController(),
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Roll the dice',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
                fontSize: 30),
          ),
        ),
        body: SafeArea(child: DiceScreen()),
      ),
    );
  }
}
