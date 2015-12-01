class Rover
  attr_accessor :x, :y, :orientation

  def initialize(position)
    @x = position[0].to_i
    @y = position[1].to_i
    @orientation = position[2]
  end

  def position
    "#{@x} #{@y} #{@orientation}"
  end

  def navigate(instructions)
    instructions.each do |command|
      case command
      when "L" then turn_left
      when "R" then turn_right
      when "M" then move_forward
      end
    end
  end

  private

  def turn_left
    case @orientation
    when "N" then @orientation = "W"
    when "E" then @orientation = "N"
    when "S" then @orientation = "E"
    when "W" then @orientation = "S"
    end
  end

  def turn_right
    case @orientation
    when "N" then @orientation = "E"
    when "E" then @orientation = "S"
    when "S" then @orientation = "W"
    when "W" then @orientation = "N"
    end
  end

  def move_forward
    case @orientation
    when "N" then @y += 1
    when "E" then @x += 1
    when "S" then @y -= 1
    when "W" then @x -= 1
    end
  end
end
