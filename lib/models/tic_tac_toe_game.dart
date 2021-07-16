import 'player.dart';

enum XOSigns { x, o }

class TicTacToeGame {
  final Player player1;
  final Player player2;
  late Player _currentPlayer;
  late double gameScore = 0;
  late List<List<String>> _board;

  Player? _winner;
  bool isGameEnded = false;
  bool _doesBoardChange = false;
  bool get doesBoardChanged => _doesBoardChange;

  Player get currentPlayer => _currentPlayer;
  Player? get winner => _winner;

  TicTacToeGame({required this.player1, required this.player2}) {
    _board = [
      ['', '', ''],
      ['', '', ''],
      ['', '', ''],
    ];
    _currentPlayer = player1;
  }
  List<List<String>> get board => _board;

  void addToTheBoard(int x, int y) {
    if (_board[y][x] == '' && isGameEnded == false) {
      _board[y][x] = _currentPlayer.stringSign();
      _doesBoardChange = true;
    } else {
      _doesBoardChange = false;
    }
  }

  void checkForWinner() {
    int _numberOfEmptyCells = 0;
    for (int y = 0; y < 3; y++) {
      if (isGameEnded == false) {
        for (int x = 0; x < 3; x++) {
          if (_board[y][x] != '') {
            if (_board[y][0] == _board[y][1] && _board[y][0] == _board[y][2]) {
              isGameEnded = true;
              _winner = _currentPlayer;

              print('win by row');
            } else if (_board[0][x] == _board[1][x] &&
                _board[0][x] == _board[2][x]) {
              isGameEnded = true;
              _winner = _currentPlayer;

              print(
                  'win by column 1:${_board[0][x]} 2:${board[1][x]} 3:${_board[2][x]}');
            } else if (_board[0][x] == _board[1][1] &&
                _board[0][x] == _board[2][2] &&
                _board[0][0] != '' &&
                x == 0) {
              isGameEnded = true;
              _winner = _currentPlayer;

              print('win by first diagonal');
            } else if (_board[0][2] == _board[1][1] &&
                _board[0][2] == _board[x][0] &&
                _board[0][2] != '' &&
                x == 2) {
              isGameEnded = true;
              _winner = _currentPlayer;

              print('win by second diagonal');
            }
          } else {
            _numberOfEmptyCells += 1;
          }
        }
      }
    }

    if (_numberOfEmptyCells == 0 && isGameEnded == false) {
      isGameEnded = true;
      _winner = null;
      print('draw');
    }
    finalGameScore();
  }

  void finalGameScore() {
    if (isGameEnded == true) {
      if (winner == null) {
        gameScore = 0;
      } else if (winner!.sign == player2.sign) {
        gameScore = 10;
      } else {
        gameScore = -10;
      }
    }
  }

  void switchPlayerTurn() {
    if (_currentPlayer == player1) {
      _currentPlayer = player2;
    } else {
      _currentPlayer = player1;
    }
  }

  void resetTheGame() {
    if (_winner != null) {
      if (_winner == player1) {
        player1.increaseTheScore();
      } else {
        player2.increaseTheScore();
      }
    }
    switchPlayerTurn();
    _board = [
      ['', '', ''],
      ['', '', ''],
      ['', '', ''],
    ];
    isGameEnded = false;
    _winner = null;
    _doesBoardChange = false;
  }

  String toString() {
    return '${board[0]}\n ${board[1]}\n ${board[2]}\n -----------------------------------';
  }
}
