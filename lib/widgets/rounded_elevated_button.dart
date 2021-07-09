import 'package:flutter/material.dart';
import 'package:tic_tac_toe/themes/colors_scheme.dart';

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
    return SizedBox(
      height: 45,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: MyColorsScheme.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        icon: Icon(
          widget.icon,
          color: MyColorsScheme.purple,
          size: 30,
        ),
        onPressed: widget.onPressd,
        label: Text(
          widget.text.toUpperCase(),
          style: TextStyle(
              color: MyColorsScheme.purple,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
