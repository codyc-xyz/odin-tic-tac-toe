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
  
  def initialize (player_one_name, player_one_symbol, player_two_name, player_two_symbol)
    @player_one_symbol = player_one_symbol
    @player_two_symbol = player_two_symbol
    @player_one = Player.new(player_one_name, player_one_symbol)
    @player_two = Player.new(player_two_name, player_two_symbol)
    @board = Array.new(3) {Array.new(3)}
  end

  def player_one_select_row
    row = @player_one.select_row
    player_one_select_column(row)
  end

  def player_two_select_row
    row = @player_two.select_row
    player_two_select_column(row)
  end

  def player_one_select_column(row)
    column = @player_one.select_column
    player_one_place_symbol(row, column)
  end

  def player_two_select_column(row)
    column = @player_two.select_column
    player_two_place_symbol(row, column)
  end

  def player_one_place_symbol(row, column) 
   
    if @board[row][column].nil?
      @board[row][column] = @player_one_symbol
      puts "#{@board}"
    else
      puts 'That board position is already full, please select an empty position'
      puts "#{@board}"
      player_one_select_row
    end
  end

  def player_two_place_symbol(row, column) 
   
    if @board[row][column].nil?
      @board[row][column] = @player_two_symbol
      puts "#{@board}"
    else
      puts 'That board position is already full, please select an empty position'
      puts "#{@board}"
      player_two_select_row
    end
  end  
  
    
end
