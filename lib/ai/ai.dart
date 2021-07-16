import 'dart:math' as math;

import 'package:tic_tac_toe/ai/move.dart';
import 'package:tic_tac_toe/models/tic_tac_toe_game.dart';

class GameMode {
  static Move easy(List<List<String>> board) {
    final math.Random random = math.Random();
    int x = random.nextInt(3);
    int y = random.nextInt(3);

    while (board[y][x] != '') {
      x = random.nextInt(3);
      y = random.nextInt(3);
    }
    return Move(x: x, y: y);
  }

  Move impossible(TicTacToeGame game) {
    double bestValue = -1000;
    late Move move;
    for (int y = 0; y < 3; y++) {
      for (int x = 0; x < 3; x++) {
        if (game.board[y][x] == '') {
          game.board[y][x] = game.player2.stringSign();
          double value = miniMaxAlgorithm(game, 0, false);
          game.board[y][x] = '';
          game.isGameEnded = false;

          if (value > bestValue) {
            move = Move(x: x, y: y);
          }
        }
      }
    }
    // print(game.toString());
    return move;
  }

  double miniMaxAlgorithm(TicTacToeGame game, int depth, bool isMaximizing) {
    game.checkForWinner();
    if (game.isGameEnded == true) {
      print(game.toString());
      return game.gameScore;
    }

    if (isMaximizing == true) {
      double bestMaxValue = -1000;

      for (int y = 0; y < 3; y++) {
        for (int x = 0; x < 3; x++) {
          if (game.board[y][x] == '') {
            game.board[y][x] = game.player2.stringSign();

            double value = miniMaxAlgorithm(game, depth + 1, false);
            game.board[y][x] = '';
            bestMaxValue = math.max(bestMaxValue, value);
          }
        }
      }

      return bestMaxValue;
    } else {
      double bestMinVal = 1000;
      for (int y = 0; y < 3; y++) {
        for (int x = 0; x < 3; x++) {
          if (game.board[y][x] == '') {
            game.board[y][x] = game.player1.stringSign();

            double value = miniMaxAlgorithm(game, depth + 1, true);
            game.board[y][x] = '';
            bestMinVal = math.min(bestMinVal, value);
          }
        }
      }

      return bestMinVal;
    }
  }
}

// class HelperMethods {
//   double miniMaxAlgorithm(TicTacToeGame game, int depth, bool isMaximizing) {
//     game.checkForWinner();
//     if (game.isGameEnded == true) {
//       print(game.gameScore);
//       return game.gameScore;
//     }

//     if (isMaximizing == true) {
//       double bestValue = -1000;

//       for (int y = 0; y < 3; y++) {
//         for (int x = 0; x < 3; x++) {
//           if (game.board[y][x] == '') {
//             game.board[y][x] = game.player2.stringSign();

//             double value = miniMaxAlgorithm(game, depth + 1, false);
//             game.board[y][x] = '';
//             if (value > bestValue) {
//               bestValue = value;
//             }
//           }
//         }
//       }

//       return bestValue;
//     } else {
//       double bestValue = 1000;
//       for (int y = 0; y < 3; y++) {
//         for (int x = 0; x < 3; x++) {
//           if (game.board[y][x] == '') {
//             game.board[y][x] = game.player1.stringSign();

//             double value = miniMaxAlgorithm(game, depth + 1, true);
//             game.board[y][x] = '';
//             if (value < bestValue) {
//               bestValue = value;
//             }
//           }
//         }
//       }

//       return bestValue;
//     }
//   }

//   void alphaBetaPruning() {}
// }
