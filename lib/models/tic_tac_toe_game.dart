import 'player.dart';

enum XOSigns { x, o }

class TicTacToeGame {
  final Player player1;
  final Player player2;
  late Player _currentPlayer;

  late List<List<String>> _board;
  Player? _winner;
  bool _isGameEnded = false;
  bool _doesBoardChange = false;
  bool get doesBoardChanged => _doesBoardChange;

  Player get currentPlayer => _currentPlayer;
  bool get isGameEnded => _isGameEnded;
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
    if (_board[y][x] == '' && _isGameEnded != true) {
      _board[y][x] = _currentPlayer.stringSign();
      _doesBoardChange = true;
    } else {
      _doesBoardChange = false;
    }
  }

  void checkForWinner() {
    int _numberOfEmptyCells = 0;
    for (int y = 0; y < 3; y++) {
      if (_isGameEnded == false) {
        for (int x = 0; x < 3; x++) {
          if (_board[y][x] != '') {
            // check the 1st row and the cross and 1st column and the diagonal from it
            if (y == 0 && x == 0) {
              if (_board[y][x] == _board[y][1] &&
                  _board[y][x] == _board[0][2]) {
                _isGameEnded = true;
                _winner = _currentPlayer;
                print('mat be 1st row ');
              } else if (_board[y][x] == _board[1][x] &&
                  _board[y][x] == _board[2][x]) {
                _isGameEnded = true;

                _winner = _currentPlayer;
                print('mat be 1st column');
              } else if (_board[y][x] == _board[1][1] &&
                  _board[y][x] == _board[2][2]) {
                _isGameEnded = true;
                _winner = _currentPlayer;
                print('mat be 1st  diagonal');
              }
            }
            //check each column in the game
            else if (y == 0 && x >= 0) {
              if (_board[y][x] == _board[1][x] &&
                  _board[y][x] == _board[2][x]) {
                _isGameEnded = true;
                _winner = _currentPlayer;
                print('mat be coulnm');
              }
            }

            //the the rows of the game

            else if (y > 0 && x == 0) {
              if (_board[y][x] == _board[y][1] &&
                  _board[y][x] == _board[y][2]) {
                _isGameEnded = true;
                _winner = _currentPlayer;
                print('mat be row ');
              }
              //check the 2nd diagonal

              if (_board[2][x] == _board[1][1] &&
                  _board[2][x] == _board[0][2]) {
                _isGameEnded = true;
                _winner = _currentPlayer;
                print('mat be 2st  diagonal');
              }
            }
          } else {
            _numberOfEmptyCells += 1;
          }
        }
      }
    }

    if (_numberOfEmptyCells == 0) {
      _isGameEnded = true;
      _winner = null;
      print('draw');
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
    _board = [
      ['', '', ''],
      ['', '', ''],
      ['', '', ''],
    ];
    _isGameEnded = false;
    _winner = null;
    _doesBoardChange = false;
  }
}
