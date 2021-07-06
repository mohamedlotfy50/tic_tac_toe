import 'package:flutter/material.dart';
import '../models/game_board.dart';
import '../models/player.dart';
import '../themes/colors_scheme.dart';
import '../widgets/board.dart';
import '../widgets/circular_icon_button.dart';
import '../widgets/score_board.dart';

class GameScreen extends StatefulWidget {
  final GameBoard _game = GameBoard();
  GameScreen({Key? key}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  Player? _player;
  bool isPlayer1 = true;
  @override
  void initState() {
    _player = widget._game.player1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 18,
        ),
        width: double.infinity,
        color: _player!.color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ScoreBoard(
              player1: widget._game.player1,
              player2: widget._game.player2,
            ),
            Board(),
            CircularIconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 35,
                color: MyColorsScheme.purple,
              ),
              backgroundColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
