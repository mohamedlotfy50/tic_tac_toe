import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/providers/home_page_provider.dart';
import 'package:tic_tac_toe/screens/game_screen.dart';
import 'package:tic_tac_toe/themes/colors_scheme.dart';
import 'package:tic_tac_toe/widgets/sign_picker.dart';

import 'color_picker.dart';

class SelectionDialog extends StatelessWidget {
  final bool isHuman;
  const SelectionDialog({Key? key, this.isHuman = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<HomePageProvider>(context);
    return AlertDialog(
      backgroundColor: MyColorsScheme.white,
      title: Text(
        'Player1',
        textAlign: TextAlign.center,
        style: TextStyle(color: MyColorsScheme.black),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LableWidgetTile(lable: 'Sign', child: SignPicker()),
          SizedBox(
            height: 15,
          ),
          LableWidgetTile(lable: 'Color', child: ColorPicker()),
        ],
      ),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: MyColorsScheme.purple),
          onPressed: () {
            _provider.setPlayers(isHuman: isHuman);

            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => GameScreen(
                  player1: _provider.player1, player2: _provider.player2),
            ));
          },
          child: Text('Play'),
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

class LableWidgetTile extends StatelessWidget {
  final String lable;
  final Widget child;
  const LableWidgetTile({Key? key, required this.lable, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          lable,
          style: TextStyle(
              color: MyColorsScheme.black,
              // fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        child,
      ],
    );
  }
}
