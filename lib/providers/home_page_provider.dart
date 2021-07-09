import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:tic_tac_toe/models/player.dart';
import 'package:tic_tac_toe/models/tic_tac_toe_game.dart';
import 'package:tic_tac_toe/themes/colors_scheme.dart';

class HomePageProvider with ChangeNotifier {
  final AudioPlayer _player = AudioPlayer();
  // late Player player1;
  // late Player player2;
  late Color _player1Color;
  late Color _player2Color;
  late XOSigns _player1Sign;
  late XOSigns _player2Sign;
  HomePageProvider() {
    // _player.setAsset('assets/music/Luke-Bergs-Take-It-Easy.mp3');
    // _player.setLoopMode(LoopMode.all);
    // _player.load();
    // _player.play();
  }
  Color get player1Color => _player1Color;
  Color get player2Color => _player2Color;
  void showSelectionPage(BuildContext context, Widget child) {
    showDialog(
      context: context,
      builder: (context) => child,
    );
  }

  void setPlayersColors(Color player1Color, XOSigns player1Sign) {
    final _colors = [MyColorsScheme.blue, MyColorsScheme.red];
    final _signs = XOSigns.values.toList();
    ;
    _player1Color = player1Color;
    _player1Sign = player1Sign;
    _colors.remove(player1Color);
    _signs.remove(player1Sign);
    _player2Color = _colors.first;
    _player2Sign = _signs.first;
    print('player 1 Color $_player1Color player2 color $_player2Color');
    print('player 1 Color $_player1Color player2 color $_player2Color');
  }
}
