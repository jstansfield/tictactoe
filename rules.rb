module Rules
  def valid_slot? input
    input.between? 0,9
  end

  def whos_turn turn=1
    turn = turn == 1? 0 : 1
  end

  def winner tiles
    t1 = [0,3,6,0,1,2,0,2]
    t2 = [1,4,7,3,4,5,4,4]
    t3 = [2,5,8,6,7,8,8,6]
    
    t1.each_with_index do |t,i|
      if tiles.values_at(t1[i],t2[i],t3[i]) == [0,0,0]
        return 0
      elsif  tiles.values_at(t1[i],t2[i],t3[i]) == [1,1,1]
        return 1
      end
    end
    false
  end
end
