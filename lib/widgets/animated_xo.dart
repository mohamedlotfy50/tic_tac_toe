import 'package:flutter/material.dart';
import 'package:tic_tac_toe/themes/colors_scheme.dart';

class AnimatedXO extends StatefulWidget {
  AnimatedXO({Key? key}) : super(key: key);

  @override
  _AnimatedXOState createState() => _AnimatedXOState();
}

class _AnimatedXOState extends State<AnimatedXO>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _xSizeAnimation;
  late Animation<double> _oSizeAnimation;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1300),
    );
    _xSizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
          tween: Tween<double>(
            begin: 30,
            end: 200,
          ),
          weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(
            begin: 200,
            end: 200,
          ),
          weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 200, end: 30), weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 30, end: 30), weight: 50),
    ]).animate(_animationController);
    _oSizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 200, end: 30), weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 30, end: 30), weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(
            begin: 30,
            end: 200,
          ),
          weight: 50),
      TweenSequenceItem<double>(
          tween: Tween<double>(
            begin: 200,
            end: 200,
          ),
          weight: 50),
    ]).animate(_animationController);
    _animationController.repeat();
    _animationController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) => child!,
      child: Container(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width / 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'X',
              style: TextStyle(
                color: MyColorsScheme.white,
                fontWeight: FontWeight.bold,
                fontSize: _xSizeAnimation.value,
              ),
            ),
            Text(
              'O',
              style: TextStyle(
                color: MyColorsScheme.white,
                fontWeight: FontWeight.bold,
                fontSize: _oSizeAnimation.value,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
