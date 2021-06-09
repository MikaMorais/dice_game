// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DiceController on _DiceController, Store {
  Computed<int> _$totalComputed;

  @override
  int get total => (_$totalComputed ??=
          Computed<int>(() => super.total, name: '_DiceController.total'))
      .value;

  final _$diceLeftAtom = Atom(name: '_DiceController.diceLeft');

  @override
  int get diceLeft {
    _$diceLeftAtom.reportRead();
    return super.diceLeft;
  }

  @override
  set diceLeft(int value) {
    _$diceLeftAtom.reportWrite(value, super.diceLeft, () {
      super.diceLeft = value;
    });
  }

  final _$diceRightAtom = Atom(name: '_DiceController.diceRight');

  @override
  int get diceRight {
    _$diceRightAtom.reportRead();
    return super.diceRight;
  }

  @override
  set diceRight(int value) {
    _$diceRightAtom.reportWrite(value, super.diceRight, () {
      super.diceRight = value;
    });
  }

  final _$_DiceControllerActionController =
      ActionController(name: '_DiceController');

  @override
  void roll() {
    final _$actionInfo = _$_DiceControllerActionController.startAction(
        name: '_DiceController.roll');
    try {
      return super.roll();
    } finally {
      _$_DiceControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
      diceLeft: ${diceLeft},
      diceRight: ${diceRight},
      total: ${total}
    ''';
  }
}
