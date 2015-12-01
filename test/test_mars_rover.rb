require File.expand_path('../../lib/mars_rover', __FILE__)

class TestApp < Minitest::Test
  def setup
    @mars_rover = MarsRover.new
  end

  def test_example
    assert_equal "bar", @mars_rover.foo
  end
end
