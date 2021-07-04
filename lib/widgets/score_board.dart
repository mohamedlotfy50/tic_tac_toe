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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(player1.name),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyColorsScheme.white,
              ),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Text(player1.score.toString()),
                    VerticalDivider(
                      color: Colors.grey,
                    ),
                    Text(player2.score.toString()),
                  ],
                ),
              ),
            ),
            Text(player2.name),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text("${player1.name}'s turn"),
      ],
    );
  }
}
