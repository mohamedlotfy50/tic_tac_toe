import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:tic_tac_toe/ai/ai.dart';
import 'package:tic_tac_toe/models/tic_tac_toe_game.dart';
import 'package:tic_tac_toe/models/player.dart';
import 'package:tic_tac_toe/themes/colors_scheme.dart';

class GameProvider extends ChangeNotifier {
  // final AudioPlayer _player = AudioPlayer();
  final Ai ai = Ai();
  late TicTacToeGame _game;
  GameProvider({required Player player1, required Player player2}) {
    _game = TicTacToeGame(player1: player1, player2: player2);
    // _player.setAsset('assets/music/mixkit-metal-hammer-hit-833.wav',
    //     preload: true);
  }

  List<List<String>> get gameBoard => _game.board;

  Color get gameColor => _game.currentPlayer.color;
  String get player1Name => _game.player1.name;
  String get player1Sign => _game.player1.stringSign();
  int get player1Score => _game.player1.score;
  String get player2Name => _game.player2.name;
  String get player2Sign => _game.player2.stringSign();
  int get player2Score => _game.player2.score;
  String get currentPlayerSign => _game.currentPlayer.stringSign();
  String get currentPlayerName => _game.currentPlayer.name;
  bool get isGameEnded => _game.isGameEnded;
  bool get isHumanTurn => _game.currentPlayer.isHuman;
  String get winnerName => _game.winner?.name ?? 'Draw';
  String get winOrDrawMessage => _game.winner == null
      ? 'Good game from you both👏👏👏.\n Do you want play again?'
      : 'Congratulation on This Winning🎉🎉🎉.\n Do you want play again?';

  void makeAMove(int y, int x) async {
    _game.addToTheBoard(x, y);
    if (_game.doesBoardChanged) {
      // _player.load();
      // _player.play();
      _game.checkForWinner();
      if (_game.isGameEnded == true) {
        // showEndGameMessage(context, child);
      } else {
        _game.switchPlayerTurn();
        if (!_game.currentPlayer.isHuman) {
          Map<String, int> aiMove = ai.makeBestMove(_game);
          makeAMove(aiMove['y']!, aiMove['x']!);
          notifyListeners();
        }
      }
      notifyListeners();
    }
  }

  void showEndGameMessage(BuildContext context, Widget child) {
    showDialog(
      context: context,
      builder: (context) => child,
    );
  }

  void playNewGame() {
    _game.resetTheGame();
    notifyListeners();
    if (!_game.currentPlayer.isHuman) {
      Map<String, int> aiMove = ai.makeBestMove(_game);
      makeAMove(
        aiMove['y']!,
        aiMove['x']!,
      );
      notifyListeners();
    }
  }
}
