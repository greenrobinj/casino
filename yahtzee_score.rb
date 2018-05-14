class Playeroll
  attr_accessor :num, :points
  
  def initialize (num, points)
    @num = num
    @points = points
  end
end

class Score
  attr_accessor :scorecard
  
  def initialize
    @scorecard = []
  end
end

