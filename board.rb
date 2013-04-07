class Board
  attr_accessor :tiles
  def initialize
   @tiles = ['-','-','-','-','-','-','-','-','-']
  end

  def write! player, tile
    @tiles[tile] = player if @tiles[tile] == '-'  
  end

  def display
    @tiles.each_with_index do |tile,index|
      tile = 'O' if tile == 0
      tile = 'X' if tile == 1
      print "\n" if index % 3 == 0 
      print "#{tile} " 
    end
    print "\n"
  end
end
