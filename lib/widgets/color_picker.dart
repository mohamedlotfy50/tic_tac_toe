import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/providers/home_page_provider.dart';

import 'package:tic_tac_toe/themes/colors_scheme.dart';

class ColorPicker extends StatelessWidget {
  ColorPicker({Key? key}) : super(key: key);

  final List<Color> _colors = [MyColorsScheme.blue, MyColorsScheme.red];
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
        itemCount: _colors.length,
        itemBuilder: (context, index) => SelectionCircle(
          color: _colors[index],
          isSelected: _provider.player1Color == _colors[index],
          onPressed: () {
            _provider.setPlayersColors(_colors[index], _colors);
          },
        ),
      ),
    );
  }
}

class SelectionCircle extends StatelessWidget {
  final bool isSelected;
  final Color color;
  final void Function()? onPressed;
  const SelectionCircle({
    Key? key,
    this.isSelected = false,
    this.onPressed,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(3),
        width: 50,
        height: 50,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? color : color.withAlpha(150),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        decoration: BoxDecoration(
          border: isSelected ? Border.all(color: color, width: 2) : null,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
