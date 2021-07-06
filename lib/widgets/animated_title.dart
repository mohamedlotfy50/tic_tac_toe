import 'package:flutter/material.dart';
import 'package:tic_tac_toe/themes/colors_scheme.dart';

class AnimatedTitle extends StatefulWidget {
  AnimatedTitle({Key? key}) : super(key: key);

  @override
  _AnimatedTitleState createState() => _AnimatedTitleState();
}

class _AnimatedTitleState extends State<AnimatedTitle> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(milliseconds: 700),
      builder: (BuildContext context, double value, Widget? child) {
        return Opacity(
          opacity: value,
          child: Padding(
            padding: EdgeInsets.only(top: value * 20),
            child: child,
          ),
        );
      },
      child: Text(
        'Tic Tac Toe',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: MyColorsScheme.white,
            fontWeight: FontWeight.w700,
            fontSize: 50,
            fontFamily: 'Dancing Script'),
      ),
    );
  }
}
