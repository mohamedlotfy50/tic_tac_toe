import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/providers/game_provider.dart';
import '../models/tic_tac_toe_game.dart';
import '../models/player.dart';
import '../themes/colors_scheme.dart';
import '../widgets/board.dart';
import '../widgets/circular_icon_button.dart';
import '../widgets/score_board.dart';

class GameScreen extends StatelessWidget {
  final Player player1, player2;
  GameScreen({Key? key, required this.player1, required this.player2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
          create: (context) => GameProvider(player1: player1, player2: player2),
          builder: (context, child) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 500),
              padding: EdgeInsets.symmetric(
                horizontal: 18,
              ),
              width: double.infinity,
              color: context.watch<GameProvider>().gameColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ScoreBoard(
                      player1Name: context.watch<GameProvider>().player1Name,
                      player1Score: context.watch<GameProvider>().player1Score,
                      player1Sign: context.watch<GameProvider>().player1Sign,
                      player2Name: context.watch<GameProvider>().player2Name,
                      player2Score: context.watch<GameProvider>().player2Score,
                      player2Sign: context.watch<GameProvider>().player2Sign,
                      currentPlayerName:
                          context.watch<GameProvider>().currentPlayerName),
                  Board(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularIconButton(
                        onPressed: () {
                          context.read<GameProvider>().playNewGame();
                        },
                        icon: Icon(
                          Icons.settings,
                          size: 35,
                          color: MyColorsScheme.purple,
                        ),
                        backgroundColor: Colors.white,
                      ),
                      if (context.watch<GameProvider>().isGameEnded)
                        CircularIconButton(
                          onPressed: () {
                            context.read<GameProvider>().playNewGame();
                          },
                          icon: Icon(
                            Icons.replay,
                            size: 35,
                            color: MyColorsScheme.purple,
                          ),
                          backgroundColor: Colors.white,
                        ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
