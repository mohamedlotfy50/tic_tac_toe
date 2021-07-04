import 'package:flutter/cupertino.dart';

import 'game_board.dart';

class Player {
  final String name;
  final XOSigns sign;
  final Color color;
  int score = 0;

  Player(this.name, this.sign, this.color);
}
