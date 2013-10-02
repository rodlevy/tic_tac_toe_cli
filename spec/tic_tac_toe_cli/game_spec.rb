require 'spec_helper'

describe Game do
	let!(:new_interface) {CommandLine.new}
	let!(:new_board) {Board.new(9)}
	let(:new_computer) {Computer.new}
	let(:fun_game) {Game.new(new_interface, new_computer)}

	it "can check that human's move is within the board" do
		fun_game.check_within_range("7", new_board.grid.length).should eq true
	end

	it 'determines when the game is over' do
		new_board.grid = ["X", "X", "X","O","O","O", "X", "X","O"]
		fun_game.board = new_board
		expect(fun_game.game_over).to be(true)
	end

	it "informs the player of bad input" do
		# new_interface.stub(:gets){"g\n"}
		# fun_game.validate_input("\z", new_board.grid)
		# fun_game.should_receive(:validate_input).with("d", new_board.grid)
		fun_game.should_receive(:puts).with("f isnt no good")
		fun_game.validate_input("f", new_board.grid)
	# 	new_interface.prompt
	end
end
