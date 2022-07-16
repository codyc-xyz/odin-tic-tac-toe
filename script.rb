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

end

module PlaceO

end

board = [[nil, nil, nil][nil, nil, nil][nil, nil, nil]]