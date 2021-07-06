import 'package:flutter/material.dart';
import 'package:tic_tac_toe/themes/colors_scheme.dart';

class CircularIconButton extends StatefulWidget {
  final Icon icon;
  final void Function()? onPressed;
  final Color? backgroundColor;
  CircularIconButton(
      {Key? key,
      required this.icon,
      this.backgroundColor,
      required this.onPressed})
      : super(key: key);

  @override
  _CircularIconButtonState createState() => _CircularIconButtonState();
}

class _CircularIconButtonState extends State<CircularIconButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        padding: EdgeInsets.all(8),
        child: widget.icon,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: widget.backgroundColor,
            boxShadow: <BoxShadow>[
              BoxShadow(
                blurRadius: 6,
                color: MyColorsScheme.black.withAlpha(60),
                offset: Offset(
                  8,
                  8,
                ),
              ),
            ]),
      ),
    );
  }
}
