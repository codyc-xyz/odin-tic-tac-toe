# players take turns placing either an X or an O onto nil spaces on a 3x3 grid until one gets three in a row/across or the board is filled
require 'pry-byebug'

class Board
  def initialize (rows = 3, columns = 3)
  $game_board = Array.new(rows) {Array.new(columns)}
  p $game_board
  end
end

class Player
attr_accessor :name, :symbol, :row, :column

  def initialize (name, symbol)
  @name = name
  @symbol = symbol
  end
 
  def select_row
    p "#{@name} it's your turn! Please input your desired row and press enter"
      @row = gets.chomp.to_i
      if @row < 3 && @row >= 0
      @row = row
    else self.select_row
    end
  end

  def select_column
    p "great choice #{@name}! Next, please enter your desired column and press enter"
      @column = gets.chomp.to_i
      if @column < 3 && @column >= 0
      @column = column
    else self.select_column
    end
  end

  def place_symbol(row, column)
  $game_board[row][column] = @symbol
  p $game_board
  end

  def play_round
  self.select_row()
  self.select_column()
  self.place_symbol(row, column)
  end
end

Board.new
p johnny = Player.new('Johnny', 'X')
p bob = Player.new('Bob', 'O')

for i in 1...5
johnny.play_round()
bob.play_round()
end
