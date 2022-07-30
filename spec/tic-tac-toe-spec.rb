require '../tic-tac-toe.rb'

describe TicTacToe do 
  subject(:player_one_row) {described_class.new('Johnny', 'X', 'Bob', 'O')}
  
  describe '#player_one_select_row' do
  context 'when user inputs an invalid row choice and then a valid row choice' do
    before do
      invalid = 'a'
      valid = 2
      allow(player_one_row).to receive(:gets).and_return(invalid, valid)
    end
      it 'displays a turn message twice, an error message once, and the selection message once' do
        name = player_one_row.instance_variable_get(:@player_one)
        turn_message = "#{name} it's your turn! Please input your desired row (1-3) and press enter"
        error_message = "that's an invalid choice #{name}, please input a number between 1-3"
        selection_message = "great choice #{name}, you have selected 2"
        expect(player_one_row).to receive(:puts).with(turn_message).twice
        expect(player_one_row).to receive(:puts).with(error_message).once
        expect(player_one_row).to receive(:puts).with(selection_message).once
        player_one_row.player_one_select_row
      end
    end

  
  end
end