import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:tic_tac_toe/models/player.dart';
import 'package:tic_tac_toe/models/tic_tac_toe_game.dart';
import 'package:tic_tac_toe/themes/colors_scheme.dart';

class HomePageProvider with ChangeNotifier {
  final AudioPlayer _audioPlayer = AudioPlayer();
  late Player _player1;
  late Player _player2;
  late Color _player1Color;
  late Color _player2Color;
  late XOSigns _player1Sign;
  late XOSigns _player2Sign;
  HomePageProvider() {
    _player1Color = MyColorsScheme.blue;
    _player1Sign = XOSigns.x;
    _player2Color = MyColorsScheme.red;
    _player2Sign = XOSigns.o;
    // _player.setAsset('assets/music/Luke-Bergs-Take-It-Easy.mp3');
    // _player.setLoopMode(LoopMode.all);
    // _player.load();
    // _player.play();
  }
  Color get player1Color => _player1Color;
  XOSigns get player1Sign => _player1Sign;
  Player get player1 => _player1;
  Player get player2 => _player2;
  void showSelectionPage(BuildContext context, Widget child) {
    showDialog(
      context: context,
      builder: (context) => child,
    );
  }

  void setPlayersColors(Color player1Color, List<Color> colorsList) {
    final _colors = [MyColorsScheme.blue, MyColorsScheme.red];
    ;
    _player1Color = player1Color;
    _colors.remove(player1Color);
    _player2Color = _colors.first;
    print('player 1 Color $_player1Color player2 color $_player2Color');
    notifyListeners();
  }

  void setPlayersSigns(XOSigns player1Sign, List<XOSigns> xoSignsList) {
    final _signs = XOSigns.values.toList();
    _player1Sign = player1Sign;
    _signs.remove(player1Sign);
    _player2Sign = _signs.first;
    print('player 1 Color $_player1Sign player2 color $_player2Sign');
    notifyListeners();
  }

  void setPlayers({bool? isHuman}) {
    _player1 = Player(
        name: 'Player 1',
        sign: _player1Sign,
        color: _player1Color,
        isHuman: true);
    _player2 = Player(
        name: isHuman != null ? 'Ai' : 'Player 2',
        sign: _player2Sign,
        color: _player2Color,
        isHuman: isHuman ?? true);
    print('player 1 ${_player1.toString()}');
    print('player 2 ${_player2.toString()}');
  }
}
