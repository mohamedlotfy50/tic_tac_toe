import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/providers/game_provider.dart';
import '../themes/colors_scheme.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GameProvider _provider = Provider.of<GameProvider>(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 6,
            color: MyColorsScheme.black.withAlpha(60),
            offset: Offset(
              12,
              18,
            ),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height / 1.9,
          child: Column(
            children: [
              for (int y = 0; y < 3; y++)
                Expanded(
                  child: Row(
                    children: [
                      for (int x = 0; x < 3; x++)
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              _provider.makeAMove(y, x);
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  right: x < 2 ? 3 : 0, bottom: y < 2 ? 3 : 0),
                              alignment: Alignment.center,
                              color: MyColorsScheme.white,
                              child: Text(
                                _provider.gameBoard[y][x],
                                style: TextStyle(
                                    color: MyColorsScheme.purple,
                                    fontSize: 65,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
