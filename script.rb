# players take turns placing either an X or an O onto nil spaces on a 3x3 grid until one gets three in a row/across or the board is filled
require 'pry-byebug'

class Board
  def initialize (rows = 3, columns = 3)
  game_board = Array.new(rows) {Array.new(columns)}
  p game_board
  end
end

class Player
attr_accessor :name, :symbol

  def initialize (name, symbol)
  @name = name
  @symbol = symbol
  end
end

Board.new
p johnny = Player.new('Johnny', 'X')
p bob = Player.new('Bob', 'O')

