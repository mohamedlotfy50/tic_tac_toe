import 'package:flutter/material.dart';
import 'package:tic_tac_toe/models/player.dart';
import 'package:tic_tac_toe/models/tic_tac_toe_game.dart';
import 'package:tic_tac_toe/screens/game_screen.dart';
import 'package:tic_tac_toe/themes/colors_scheme.dart';
import 'screens/home_screen.dart';
import 'themes/themes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Tac Toe',
      theme: myAppThemes[Themes.light],
      home: GameScreen(
        player1: Player(
            name: 'player 1',
            sign: XOSigns.x,
            color: MyColorsScheme.blue,
            isHuman: true),
        player2: Player(
            name: 'ai',
            sign: XOSigns.o,
            color: MyColorsScheme.red,
            isHuman: false),
      ),
    );
  }
}
