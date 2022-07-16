# players take turns placing either an X or an O until one gets three in a row/across or the board is filled

board = [[nil, nil, nil],
         [nil, nil, nil],
         [nil, nil, nil]]

class PlayerOneMove
  include GetInput
  def initialize(vertical, horizontal)
    @vertical = vertical
    @horizontal = horizontal
    board[vertical, horizontal] = 'X'
  end
end

class PlayerTwoMove
  include GetInput
  def initialize(vertical, horizontal)
    @vertical = vertical
    @horizontal = horizontal
    board[vertical, horizontal] = 'O'
  end
end

for i in 0...board.length
  PlayerOneMove.new(vertical = gets.chomp, horizontal = gets.chomp)
  PlayerTwoMove.new(vertical = gets.chomp, horizontal = gets.chomp)
  p board
end
