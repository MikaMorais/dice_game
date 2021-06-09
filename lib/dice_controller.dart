import 'dart:math';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
part 'dice_controller.g.dart';

class DiceController = _DiceController with _$DiceController;

abstract class _DiceController with Store {
  @observable
  int diceLeft = Random().nextInt(6) + 1;

  @observable
  int diceRight = Random().nextInt(6) + 1;

  @computed
  int get total => diceLeft + diceRight;

  @action
  void roll() {
    diceLeft = Random().nextInt(6) + 1;
    diceRight = Random().nextInt(6) + 1;
  }
}
