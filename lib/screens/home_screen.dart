import 'package:flutter/material.dart';
import 'package:tic_tac_toe/themes/colors_scheme.dart';
import 'package:tic_tac_toe/widgets/circular_icon_button.dart';
import 'package:tic_tac_toe/widgets/rounded_elevated_button.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 18,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              MyColorsScheme.red,
              MyColorsScheme.blue,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Tic Tac Toe',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: MyColorsScheme.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'X',
                  style: TextStyle(
                    color: MyColorsScheme.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 120,
                  ),
                ),
                Text(
                  'O',
                  style: TextStyle(
                    color: MyColorsScheme.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                RoundedElevatedButton(
                  icon: Icons.computer,
                  onPressd: () {},
                  text: 'single player',
                ),
                RoundedElevatedButton(
                  icon: Icons.people,
                  onPressd: () {},
                  text: 'with a friend',
                ),
              ],
            ),
            CircularIconButton(
              icon: Icon(
                Icons.settings,
                size: 35,
              ),
              backgroundColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
