require 'test/unit'
require_relative 'clock'

class Clock_Test < Test::Unit::TestCase
  def setup
    @clock = Clock.new(0, 0, 0)
  end

  def test_current_time
    assert_equal([0, 0, 0], @clock.puts(0, 0, 0), 'Current Time method is not working properly')
  end

  def test_tick
    assert_equal(2, @clock.tick!(1), 'Clock ticker is not working properly')
  end

end

