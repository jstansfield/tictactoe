class Board
  attr_accessor :tiles
  def initialize
   @tiles = [0,0,0,0,0,0,0,0,0]
  end

  def write player, tile
    @tiles[tile] = player if @tiles[tile] == 0  
  end

end
