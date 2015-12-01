require "enumerator"
require File.expand_path('../rover', __FILE__)
require File.expand_path('../plateau', __FILE__)

class MarsRover
  def run(input)
    plateau_upper_right_coordinates = input[0]
    plateau_max_x = plateau_upper_right_coordinates.to_s.split[0].to_i
    plateau_max_y = plateau_upper_right_coordinates.to_s.split[1].to_i
    plateau = Plateau.new(plateau_max_x, plateau_max_y)

    number_of_rovers = (input.size - 1)/2
    rovers = []

    number_of_rovers.times do |i|
      position = input[2*i + 1].to_s.split
      rovers << Rover.new(position, plateau)
    end

    number_of_rovers.times do |i|
      instructions = input[2*i + 2].to_s.split(//)
      rovers[i].navigate(instructions)
    end

    output = rovers.map do |rover|
      rover.position
    end
  end
end

mars_rover = MarsRover.new
puts mars_rover.run(ARGV)
