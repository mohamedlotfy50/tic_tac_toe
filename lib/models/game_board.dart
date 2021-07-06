import 'player.dart';
import '../themes/colors_scheme.dart';

enum XOSigns { x, o }

class GameBoard {
  Player player1 = Player('Player 1', XOSigns.x, MyColorsScheme.red);
  Player player2 = Player('Player 2', XOSigns.o, MyColorsScheme.blue);

  bool isOver = false;
  List<List<String>>? _board;
  GameBoard() {
    _board = [
      ['', '', ''],
      ['', '', ''],
      ['', '', ''],
    ];
  }
  List<List<String>> get board => _board!;

  void addToTheBoard(XOSigns sign, int x, int y) {
    if (_board != null && _board![y][x] == '') {
      _board![y][x] = sign.toString();
    }
  }
}
