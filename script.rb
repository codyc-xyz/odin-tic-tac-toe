#  
class PlayerOne
  include PlaceX
  include PlaceO

end

class PlayerTwo
  include PlaceX
  include PlaceO

end

module PlaceX
include ChoosePosition
board[subarray,position] = "X"
end

module PlaceO
include ChoosePosition
board[subarray,position] = "O"
end

module ChoosePosition(subarray, position)

end
board = [[nil, nil, nil]
        [nil, nil, nil]
        [nil, nil, nil]]