class TicTacToe
  attr_reader :player_one, :player_one_symbol, :player_two, :player_two_symbol
  attr_accessor :board
  
  def initialize(player_one, player_one_symbol, player_two, player_two_symbol)
    @player_one = player_one
    @player_one_symbol = player_one_symbol
    @player_two = player_two
    @player_two_symbol = player_two_symbol
    @board = Array.new(3) {Array.new(3)}
  end

  def player_one_select_row
    puts "#{@player_one} it's your turn! Please input your desired row (1-3) and press enter"
    player_one_row = gets.to_i
      if player_one_row < 4 && player_one_row > 0
        puts "great choice #{@player_one}, you have selected #{player_one_row}"
        player_one_row -= 1 
      else
        puts "that's an invalid choice #{@player_one}, please input a number between 1-3"
        player_one_select_row
      end
  end
end


