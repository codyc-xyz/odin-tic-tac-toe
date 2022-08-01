require '../tic-tac-toe.rb'

describe Player do   
  describe 'select_row' do
    subject(:row) {described_class.new('Johnny', 'X')}
  context 'when user inputs an invalid row choice and then a valid row choice' do
    before do
      invalid = 'a'
      valid = 2
      allow(row).to receive(:gets).and_return(invalid, valid)
    end
      it 'displays a turn message twice, an error message once, and the selection message once' do
        name = row.instance_variable_get(:@name)
        turn_message = "#{name} it's your turn! Please input your desired row (1-3) and press enter"
        error_message = "that's an invalid choice #{name}, please input a number between 1-3"
        selection_message = "great choice #{name}, you have selected 2"
        expect(row).to receive(:puts).with(turn_message).twice
        expect(row).to receive(:puts).with(error_message).once
        expect(row).to receive(:puts).with(selection_message).once
        row.select_row
      end
    end
  end

  describe 'select_column' do
    subject(:column) {described_class.new('Johnny', 'X')}

    context 'when user inputs an invalid column choice and then a valid column choice' do
      before do
        invalid = '$'
        valid = 3
        allow(column).to receive(:gets).and_return(invalid, valid)
      end
      it 'displays a turn message twice, an error message once, and the selection message once' do
        name = column.instance_variable_get(:@name)
        turn_message = "#{name} it's your turn! Please input your desired column (1-3) and press enter"
        error_message = "that's an invalid choice #{name}, please input a number between 1-3"
        selection_message = "great choice #{name}, you have selected 3"
        expect(column).to receive(:puts).with(turn_message).twice
        expect(column).to receive(:puts).with(error_message).once
        expect(column).to receive(:puts).with(selection_message).once
        column.select_column
      end
    end
   end
end

describe TicTacToe do
  describe 'place_symbol' do
    subject(:game_board) {described_class.new('Johnny', 'X', 'Bob', 'O')}

    context 'when user has submitted a valid row and column selection and that board position is empty' do
    
      it 'changes the user\'s chosen board position from nil to the user\'s symbol' do
        row = 2
        column = 2
        symbol = game_board.instance_variable_get(:@player_one_symbol)
        board = game_board.instance_variable_get(:@board)
        expect(board[row][column]).to eq(nil)
        game_board.player_one_place_symbol(row, column)
        expect(board[row][column]).to eq(symbol)     
      end
    end

    context 'when chosen board position is not empty' do

      it 'does not change the board state' do
      row = 2
      column = 2
      board = game_board.instance_variable_get(:@board)
      board[2][2]= 'O'
      game_board.player_one_place_symbol(row, column, board)
      expect(board[row][column]).to eq('O')
    end

    it 'returns an error message and prints the board' do
      row = 2
      column = 2
      board = game_board.instance_variable_get(:@board)
      board[2][2]= 'O'
      error_message = "That board position is already full, please select an empty position\n#{board}\n"
      expect{game_board.player_one_place_symbol(row, column, board)}.to output(error_message).to_stdout
    end
  end
end

  # describe 'winner?' do
  #   subject(:game_board) {described_class.new('Johnny', 'X', 'Bob', 'O')}

  #   context 'when a user has completed a horizontal row of three symbols' do

  #     it 'causes that player to win, and the game to end' do
  #       symbol_one = game_board.instance_variable_get(:@player_one_symbol)
        


end
        
        