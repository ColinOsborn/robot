
class Robot
attr_reader :bearing

  def initialize
    @valid_bearings = [:east, :west, :north, :south]

  end

  def orient(direction)
    if @valid_bearings.include?(direction)
      @bearing = direction
    else
      raise(ArgumentError)
    end
  end
   def turn_right
    if bearing == :north
      @bearing = :east
    elsif bearing == :east
      @bearing = :south
    elsif bearing == :south
      @bearing = :west
    elsif bearing == :west
      @bearing = :north
    end
   end

   def turn_left
     if bearing == :north
       @bearing = :west
     elsif bearing == :east
       @bearing = :north
     elsif bearing == :south
       @bearing = :east
     elsif bearing == :west
       @bearing = :south
     end
   end

   def at(x, y)
     @coordinates = [x, y]
   end

   def coordinates
     @coordinates
   end

   def advance
     x = @coordinates.first
     y = @coordinates.last
     if bearing == :north
       at(x, y += 1)
     elsif bearing == :south
       at(x, y -= 1)
     elsif bearing == :east
       at(x += 1, y)
     elsif bearing == :west
       at(x -= 1, y)
     end
   end
end

class Simulator

  def initialize
  end

  def instructions()
    
  end
end

# dont add instance variable here, since it's just reading
