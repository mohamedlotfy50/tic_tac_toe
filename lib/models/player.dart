import 'package:flutter/cupertino.dart';

import 'tic_tac_toe_game.dart';

class Player {
  final String name;
  final XOSigns sign;
  final Color color;
  final bool isHuman;
  int _score = 0;

  int get score => _score;

  Player({
    required this.name,
    required this.sign,
    required this.color,
    required this.isHuman,
  });

  String stringSign() => sign.toString().split('.')[1];

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Player && other.name == name && other.sign == sign;
  }

  void increaseTheScore() {
    _score += 1;
  }

  @override
  int get hashCode {
    return name.hashCode ^ sign.hashCode ^ color.hashCode ^ _score.hashCode;
  }

  @override
  String toString() {
    return 'Player(name: $name, sign: $sign, color: $color, isHuman: $isHuman, _score: $_score)';
  }
}
