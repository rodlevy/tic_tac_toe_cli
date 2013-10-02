require 'spec_helper'

describe CommandLine do

	let!(:new_interface) {CommandLine.new}
	let!(:new_board) {Board.new(9)}
	let(:new_computer) {Computer.new}
	let(:fun_game) {Game.new(new_interface, new_computer)}

	it "checks for of bad input" do
		# new_interface.stub(:gets){"f\n"}
		# fun_game.validate_input("\z", new_board.grid)
		# fun_game.should_receive(:validate_input).with("d", new_board.grid)
		# fun_game.should_receive(:puts).with("f isnt no good")
		# expect(fun_game).to receive(:check_within_range).with("8", new_board.grid.length).and_return(true)
		expect(fun_game.check_within_range("8", new_board.grid.length)).to eq true
	# 	new_interface.prompt
	end

	# it 'prints a board that corresponds to the grid size' do

	# end
	it 'gets the initial input from human' do
		new_interface.stub(:gets){"9\n"}
		new_interface.opening_prompt.should == "9"
	end

	it 'determines the grid length of the board' do
		new_interface.stub(:gets){"9\n"}
		new_interface.grid_size.should == 9
	end

	it 'prints out a pretty board' do
		new_interface.should_receive(:puts).with("\n Your Board \n\n\n0   1   2\n3   4   5\n6   7   8")
		new_interface.pretty_print_board(new_board.grid)
	end

end
