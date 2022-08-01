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

  def select_column
    puts "#{self.name} it's your turn! Please input your desired column (1-3) and press enter"
    column = gets.to_i
      if column < 4 && column > 0
        puts "great choice #{self.name}, you have selected #{column}"
        column -= 1 
      else
        puts "that's an invalid choice #{self.name}, please input a number between 1-3"
        select_column
      end
      column
  end

end

class TicTacToe
  attr_reader :player_one, :player_two, :player_one_name, :player_one_symbol, :player_two_name, :player_two_symbol
  attr_accessor :board
  
  def initialize (player_one_name = 'Johnny', player_one_symbol = 'X', player_two_name = 'Bob', player_two_symbol = 'O')
    @player_one_name = player_one_name
    @player_one_symbol = player_one_symbol
    @player_two_name = player_two_name
    @player_two_symbol = player_two_symbol
    @player_one = Player.new(player_one_name, player_one_symbol)
    @player_two = Player.new(player_two_name, player_two_symbol)
    @board = Array.new(3) {Array.new(3)}
  end

  def player_one_turn
    row = @player_one.select_row
    column = @player_one.select_column
    symbol = @player_one_symbol
    place_symbol(row, column, symbol)
    name = @player_one_name
    winner?(name, symbol)
  end

  def player_two_turn
    row = @player_two.select_row
    column = @player_two.select_column
    symbol = @player_two_symbol
    place_symbol(row, column, symbol)
    name = @player_two_name
    winner?(name, symbol)
  end

  def place_symbol(row, column, symbol, board = @board) 
   
    if @board[row][column].nil?
      @board[row][column] = symbol
      puts "#{@board}"
    else
      puts 'That board position is already full, please select an empty position'
      puts "#{@board}"
      false
    end
  end

  def winner?(name, symbol, board = @board)
      if 
       board[0][0] == symbol && board[0][1] == symbol && board[0][2] == symbol ||
       board[0][0] == symbol && board[1][0] == symbol && board[2][0] == symbol ||
       board[1][0] == symbol && board[1][1] == symbol && board[1][2] == symbol ||
       board[2][0] == symbol && board[2][1] == symbol && board[2][2] == symbol ||
       board[0][1] == symbol && board[1][1] == symbol && board[2][1] == symbol ||
       board[0][2] == symbol && board[1][2] == symbol && board[2][2] == symbol ||
       board[0][0] == symbol && board[1][1] == symbol && board[2][2] == symbol ||
       board[2][0] == symbol && board[1][1] == symbol && board[0][2] == symbol
       puts "Congratulations #{name}, You have won!"
       true
      end
  end
  
  
    
end
