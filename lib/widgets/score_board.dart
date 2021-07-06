import 'package:flutter/material.dart';
import '../models/player.dart';
import '../themes/colors_scheme.dart';

class ScoreBoard extends StatelessWidget {
  final Player player1;
  final Player player2;
  const ScoreBoard({Key? key, required this.player1, required this.player2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserName(
                playerName: player1.name,
                sign: player1.stringSign(),
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
                                player1.score.toString(),
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
                              player2.score.toString(),
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
                playerName: player2.name,
                sign: player2.stringSign(),
              ),
            ]),
        SizedBox(
          height: 10,
        ),
        Text(
          "${player1.name}'s Turn",
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
