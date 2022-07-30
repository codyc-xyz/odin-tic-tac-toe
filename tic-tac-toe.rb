class Player
  attr_reader :name, :sybmol
  attr_accessor :row, :column
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @row 
    @column
  end

  def select_row
    puts "#{self.name} it's your turn! Please input your desired row (1-3) and press enter"
    @row = gets.to_i
      if self.row < 4 && self.row > 0
        puts "great choice #{self.name}, you have selected #{@row}"
        @row -= 1 
      else
        puts "that's an invalid choice #{self.name}, please input a number between 1-3"
        select_row
      end

  end

end

class TicTacToe
  attr_reader :player_one, :player_two
  attr_accessor :board
  
  def initialize
    @player_one = Player.new('Johnny', 'X')
    @player_two = Player.new('Bob', '0')
    @board = Array.new(3) {Array.new(3)}
  end

  def player_one_select_row
    @player_one.select_row
    
  end

   
end


