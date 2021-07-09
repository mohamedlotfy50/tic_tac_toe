import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/models/tic_tac_toe_game.dart';
import 'package:tic_tac_toe/providers/home_page_provider.dart';

import 'package:tic_tac_toe/themes/colors_scheme.dart';

class SignPicker extends StatelessWidget {
  SignPicker({Key? key}) : super(key: key);

  final List<XOSigns> _signs = XOSigns.values.toList();

  @override
  Widget build(BuildContext context) {
    final _provider = Provider.of<HomePageProvider>(context);

    return Container(
      height: 50,
      width: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _signs.length,
        itemBuilder: (context, index) => SelectionCircle(
          sign: _signs[index],
          isSelected: _provider.player1Sign == _signs[index],
          onPressed: () {
            _provider.setPlayersSigns(_signs[index], _signs);
          },
        ),
      ),
    );
  }
}

class SelectionCircle extends StatelessWidget {
  final bool isSelected;
  final XOSigns sign;
  final void Function()? onPressed;
  const SelectionCircle({
    Key? key,
    this.isSelected = false,
    this.onPressed,
    required this.sign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(3),
        width: 50,
        height: 50,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              sign.toString().split('.')[1],
              style: TextStyle(
                  color: isSelected
                      ? MyColorsScheme.purple
                      : MyColorsScheme.purple.withAlpha(200),
                  fontSize: 22,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
            ),
          ),
        ),
        decoration: BoxDecoration(
          border: isSelected
              ? Border.all(color: MyColorsScheme.purple, width: 2)
              : null,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
