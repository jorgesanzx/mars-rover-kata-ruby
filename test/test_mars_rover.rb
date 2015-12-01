require "test_helper"
require File.expand_path('../../lib/mars_rover', __FILE__)

class TestApp < Minitest::Test
  def setup
    @mars_rover = MarsRover.new
  end

  def test_left
    assert_equal "1 2 W", @mars_rover.run(["5 5", "1 2 N", "L"])
  end

  def test_right
    assert_equal "1 2 E", @mars_rover.run(["5 5", "1 2 N", "R"])
  end

  def test_move
    assert_equal "1 3 N", @mars_rover.run(["5 5", "1 2 N", "M"])
  end

  def test_example_first_rover
    assert_equal "1 3 N", @mars_rover.run(["5 5", "1 2 N", "LMLMLMLMM"])
  end
end
