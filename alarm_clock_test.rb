
require 'test/unit'
require_relative 'alarm_clock'

class Alarm_Clock_Test < Test::Unit::TestCase
  def setup
    @alarm = Alarm_Clock.new(6, 45, 24)
  end

end
