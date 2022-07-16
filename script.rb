# players take turns placing either an X or an O until one gets three in a row/across or the board is filled

board = [[nil, nil, nil],
         [nil, nil, nil],
         [nil, nil, nil]]

class PlayerOneMove
  def initialize(vertical, horizontal)
    @vertical = vertical
    @horizontal = horizontal
    board[vertical, horizontal] = 'X'
  end
end

class PlayerTwoMove
  def initialize(vertical, horizontal)
    @vertical = vertical
    @horizontal = horizontal
    board[vertical, horizontal] = 'O'
  end
end

for i in 0...board.length
  PlayerOneMove.new()
  PlayerTwoMove.new()
  p board
end
