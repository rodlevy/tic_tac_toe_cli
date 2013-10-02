require 'ultimate_tic_tac_toe'
require './views/command_line'
require './lib/game'

fun_game = Game.new(CommandLine.new, Computer.new)
fun_game.play
