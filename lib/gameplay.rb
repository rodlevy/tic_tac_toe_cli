class GamePlay

	def initialize
		@fun_game = Game.new(CommandLine.new, Computer.new)
		play
	end

	def play
		@fun_game.play
	end
end
