import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'dice_controller.dart';

class DiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dice = Provider.of<DiceController>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Observer(
                  builder: (context) => Image.asset(
                    'images/dado_${dice.diceLeft}.png',
                    height: 140,
                  ),
                ),
              ),
              Expanded(
                child: Observer(
                  builder: (context) => Image.asset(
                    'images/dado_${dice.diceRight}.png',
                    height: 140,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Observer(
              builder: (context) => Text(
                'Result: ${dice.total}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 32),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 120),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26.0),
                  side: BorderSide(color: Colors.black)),
              splashColor: Colors.yellow,
              color: Colors.black,
              child: Text(
                'Roll the Dice',
                style: TextStyle(color: Colors.yellow, fontSize: 40),
              ),
              onPressed: () {
                dice.roll();
              },
            ),
          )
        ],
      ),
    );
  }
}
