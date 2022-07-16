#players take turns placing either an X or an O until one gets three in a row/across or the board is filled

board = [[nil, nil, nil],
        [nil, nil, nil],
        [nil, nil, nil]]

class PlayerOne
  include PlaceX.blue
  include PlaceO.blue

end

class PlayerTwo
  include PlaceX.red
  include PlaceO.red
  
end

module PlaceX
include Input
  def placex(subarray, position)

  board[subarray, position] = "X"
end
end

module PlaceO
  include Input
  def placeo(subarray, position)
  board[subarray, position] = "O"
  end
end

module Input
  def prompt(*args)
    print(*args)
    gets
end
end

