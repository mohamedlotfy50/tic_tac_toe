import 'package:flutter/material.dart';

class RoundedElevatedButton extends StatefulWidget {
  final String text;
  final IconData icon;
  final void Function()? onPressd;
  RoundedElevatedButton(
      {Key? key,
      required this.text,
      required this.onPressd,
      required this.icon})
      : super(key: key);

  @override
  _RoundedElevatedButtonState createState() => _RoundedElevatedButtonState();
}

class _RoundedElevatedButtonState extends State<RoundedElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(widget.icon),
      onPressed: widget.onPressd,
      label: Text(
        widget.text.toUpperCase(),
      ),
    );
  }
}
