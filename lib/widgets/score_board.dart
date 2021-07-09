import 'package:flutter/material.dart';
import '../models/player.dart';
import '../themes/colors_scheme.dart';

class ScoreBoard extends StatelessWidget {
  final String player1Name,
      player2Name,
      player1Sign,
      player2Sign,
      currentPlayerName;
  final int player1Score, player2Score;

  const ScoreBoard({
    Key? key,
    required this.player1Name,
    required this.player1Sign,
    required this.player2Name,
    required this.player2Sign,
    required this.player1Score,
    required this.player2Score,
    required this.currentPlayerName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserName(
                playerName: player1Name,
                sign: player1Sign,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        blurRadius: 6,
                        color: MyColorsScheme.black.withAlpha(60),
                        offset: Offset(
                          6,
                          6,
                        ),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: MyColorsScheme.white,
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                player1Score.toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: MyColorsScheme.purple,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(
                          color: MyColorsScheme.black,
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              player2Score.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: MyColorsScheme.purple,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              UserName(
                playerName: player2Name,
                sign: player2Sign,
              ),
            ]),
        SizedBox(
          height: 10,
        ),
        Text(
          "$currentPlayerName's Turn",
          style: TextStyle(color: MyColorsScheme.black, fontSize: 20),
        ),
      ],
    );
  }
}

class UserName extends StatelessWidget {
  final String playerName;
  final String sign;
  const UserName({Key? key, required this.playerName, required this.sign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            Text(
              playerName,
              style: TextStyle(
                  color: MyColorsScheme.white,
                  fontSize: 25,
                  fontFamily: 'Dancing Script'),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              sign.toUpperCase(),
              style: TextStyle(
                color: MyColorsScheme.black,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
