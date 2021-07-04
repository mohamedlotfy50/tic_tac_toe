class GameBoard {
  late List<List<String>>? _board;
  GameBoard() {
    _board = [
      ['', '', ''],
      ['', '', ''],
      ['', '', ''],
    ];
  }

  void addToTheBoard(String sign, int x, int y) {
    if (_board != null && _board![y][x] == '') {
      _board![y][x] = sign;
    }
  }
}
