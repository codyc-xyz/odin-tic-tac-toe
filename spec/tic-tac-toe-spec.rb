require '../tic-tac-toe.rb'

describe TicTacToe do 
  subject(:row_input) {described_class.new('Johnny', 'X')}
  
  describe '#select_row' do
  context 'when user inputs an incorrect row choice' do
    before do
      invalid = 'a'
      allow(row_input).to receive(:gets).and_return(invalid)
    end
      it 'displays a turn message once and an error message once' do
        name = row_input.instance_variable_get(:@name)
        turn_message = "#{name} it's your turn! Please input your desired row (0-2) and press enter"
        error_message = "that's an invalid choice #{name}, please input a number between 0-2"
        expect(row_input).to receive(:puts).with(turn_message).once
        expect(row_input).to receive(:puts).with(error_message).once
        row_input.select_row
      end
    end

  context 'when user inputs correct row choice' do
    before do
      valid = 2
      allow(row_input).to receive(:gets).and_return(valid)
      end

      it 'displays a turn message once and the selection message once' do
      name = row_input.instance_variable_get(:@name)
      turn_message = "#{name} it's your turn! Please input your desired row (0-2) and press enter"
      selection_message = "great choice #{name}, you have selected 2"
      expect(row_input).to receive(:puts).with(turn_message).once
      expect(row_input).to receive(:puts).with(selection_message).once
      row_input.select_row
      end
    end
  end
end