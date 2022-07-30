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