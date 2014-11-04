require 'test/unit'
require_relative 'reverse_clock'

class Reverse_Clock_Test < Test::Unit::TestCase
  def setup
    @rev_clock = Reverse_Clock.new(0, 0, 0)
  end

  def test_current_rev_time
    assert_equal([0, 0, 0], @rev_clock.current_rev_time(0, 0, 0), 'current_time method not working properly')
  end

  def test_tick
    assert_equal(1, @rev_clock.tick!(2), 'Reverse clock ticker not working properly')
  end

end
