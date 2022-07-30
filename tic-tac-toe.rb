class Player
  attr_reader :name, :sybmol
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def select_row
    puts "#{self.name} it's your turn! Please input your desired row (1-3) and press enter"
    row = gets.to_i
      if row < 4 && row > 0
        puts "great choice #{self.name}, you have selected #{row}"
        row -= 1 
      else
        puts "that's an invalid choice #{self.name}, please input a number between 1-3"
        select_row
      end
      row
  end

end

class TicTacToe
  attr_reader :player_one, :player_two
  attr_accessor :board
  
  def initialize (player_one_name, player_one_symbol, player_two_name, player_two_symbol)
    @player_one = Player.new(player_one_name, player_one_symbol)
    @player_two = Player.new(player_two_name, player_two_symbol)
    @board = Array.new(3) {Array.new(3)}
  end

  def player_one_select_row
    @player_one.select_row
  end

  def player_two_select_row
    @player_two.select_row
  end

  def player_one_

  end
   
end


