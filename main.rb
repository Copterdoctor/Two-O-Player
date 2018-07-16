require './game.rb'
require './player.rb'

game = NewGame.new
p1 = Player.new('Player 1')
p2 = Player.new('Player 2')

game.start_game(p1, p2)