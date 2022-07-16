# players take turns placing either an X or an O onto nil spaces on a 3x3 grid until one gets three in a row/across or the board is filled
require 'pry-byebug'

class Board
  def initialize (rows = 3, columns = 3)
  $game_board = Array.new(rows) {Array.new(columns)}
  p $game_board
  end
end

class Player
attr_accessor :name, :symbol

  def initialize (name, symbol)
  @name = name
  @symbol = symbol
  end

  def place_symbol(row, column)
    $game_board[row][column] = @symbol
    p $game_board
  end
  
  def your_turn
    p "#{@name} it's your turn! Please input your desired row and press enter, then input your desired column and press enter"
  end 
end

Board.new
p johnny = Player.new('Johnny', 'X')
p bob = Player.new('Bob', 'O')

for i in 1...5
johnny.your_turn()
johnny.place_symbol(row = gets.chomp.to_i, column = gets.chomp.to_i)

bob.your_turn()
bob.place_symbol(row = gets.chomp.to_i, column = gets.chomp.to_i)
end
