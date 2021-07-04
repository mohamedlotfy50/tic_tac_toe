import 'package:flutter/material.dart';
import '../themes/colors_scheme.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.9,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          for (int y = 0; y < 3; y++)
            Expanded(
              child: Row(
                children: [
                  for (int x = 0; x < 3; x++)
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 3, bottom: 3),
                        alignment: Alignment.center,
                        color: MyColorsScheme.white,
                        child: Text(''),
                      ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
