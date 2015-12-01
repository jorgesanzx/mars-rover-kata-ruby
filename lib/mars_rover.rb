require File.expand_path('../rover', __FILE__)

class MarsRover
  def run(input)
    position = input[1].to_s.split
    rover = Rover.new(position)

    instructions = input[2]
    rover.navigate(instructions)

    rover.position
  end
end

mars_rover = MarsRover.new
puts mars_rover.run(ARGV)
