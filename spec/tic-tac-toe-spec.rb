require '../tic-tac-toe.rb'

describe Player do 
  subject(:row) {described_class.new('Johnny', 'X')}
  
  describe 'select_row' do
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
end