import 'dart:math';

import 'package:tic_tac_toe/models/tic_tac_toe_game.dart';

class Ai {
  static Map<String, int> playRamdom(List<List<String>> board) {
    final Random random = Random();
    int x = random.nextInt(3);
    int y = random.nextInt(3);

    while (board[y][x] != '') {
      x = random.nextInt(3);
      y = random.nextInt(3);
    }
    return {'x': x, 'y': y};
  }

  Map<String, int> makeBestMove(TicTacToeGame game) {
    double bestValue = double.negativeInfinity;
    Map<String, int> move = {};
    for (int y = 0; y < 3; y++) {
      for (int x = 0; x < 3; x++) {
        if (game.board[y][x] != '') {
          game.board[y][x] = game.player2.stringSign();
          double movVal = _miniMaxAlgorithm(game, 0, false);
          game.board[y][x] = '';

          if (movVal > bestValue) {
            print('x is ${x} y is${y}');
            move = {
              'x': x,
              'y': y,
            };
          }
        }
      }
    }

    return move;
  }

  double _miniMaxAlgorithm(TicTacToeGame game, int depth, bool isMaximizing) {
    if (game.isGameEnded == true) {
      return game.gameScore;
    }

    if (isMaximizing) {
      double bestValue = double.negativeInfinity;

      for (int y = 0; y < 3; y++) {
        for (int x = 0; x < 3; x++) {
          game.board[y][x] = game.currentPlayer.stringSign();
          game.switchPlayerTurn();
          double value = _miniMaxAlgorithm(game, depth + 1, !isMaximizing);
          bestValue = max(bestValue, value);
          game.board[y][x] = '';
        }
      }
      print(bestValue);
      return bestValue;
    } else {
      double bestValue = double.infinity;

      for (int y = 0; y < 3; y++) {
        for (int x = 0; x < 3; x++) {
          game.board[y][x] = game.currentPlayer.stringSign();
          game.switchPlayerTurn();
          double value = _miniMaxAlgorithm(game, depth + 1, !isMaximizing);
          bestValue = min(bestValue, value);
          game.board[y][x] = '';
        }
      }
      print(bestValue);

      return bestValue;
    }
  }

  void alphaBetaPruning() {}
}
