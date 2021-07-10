import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/providers/game_provider.dart';
import 'package:tic_tac_toe/themes/colors_scheme.dart';

class EndGameDialog extends StatelessWidget {
  const EndGameDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<GameProvider>(context);
    return AlertDialog(
      title: Text(
        _provider.winnerName,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: MyColorsScheme.black,
        ),
      ),
      content: Text(
        _provider.winOrDrawMessage,
        style: TextStyle(fontSize: 19),
      ),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: MyColorsScheme.purple),
          onPressed: () {
            _provider.playNewGame();
            Navigator.pop(context);
          },
          child: Text('Play again'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Cancel',
            style: TextStyle(color: MyColorsScheme.purple),
          ),
        ),
      ],
    );
  }
}
