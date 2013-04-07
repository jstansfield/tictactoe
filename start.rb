require 'ruby-debug'
require './board.rb'
require './player.rb'
require './rules.rb'
include Rules

board = Board.new
p = Array.new 2
p[0] = Player.new
p[1] = Player.new

while winner(board.tiles) == false
 turn = whos_turn turn
 go = gets.chomp.to_i
 board.write!(turn,go) if valid_slot? go
 board.display
end 

p "player #{winner(board.tiles)} has won"
