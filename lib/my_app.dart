import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'themes/themes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Tac Toe',
      theme: myAppThemes[Themes.light],
      home: HomeScreen(),
    );
  }
}
