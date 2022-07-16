# players take turns placing either an X or an O until one gets three in a row/across or the board is filled

$board = [[Array.new(3) { Array.new(3)}]]

module AlterBoard
  def place_move(vertical, horizontal)
    @vertical = vertical
    @horizontal = horizontal
    $board[vertical.to_i, horizontal.to_i] = 'X'
  end
end

class Player 
  include AlterBoard
end
class PlayerOneMove < Player
end

class PlayerTwoMove < Player
 def place_move(vertical,horizontal)
  @vertical = vertical
  @horizontal = horizontal
  $board[vertical.to_i, horizontal.to_i] = 'O'
 end
end

for i in 0...5
  p1_move = PlayerOneMove.new
  p1_move.place_move(vertical = gets.chomp, horizontal = gets.chomp)

  p2_move = PlayerTwoMove.new
  p2_move.place_move(vertical = gets.chomp, horizontal = gets.chomp)

  p $board
end
