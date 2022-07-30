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

end
