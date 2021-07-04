import 'package:flutter/material.dart';

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
        padding: EdgeInsets.all(5),
        child: widget.icon,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: widget.backgroundColor,
        ),
      ),
    );
  }
}
