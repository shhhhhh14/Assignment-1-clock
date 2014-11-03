class Alarm_Clock
  require_relative 'Clock'

  def initialize(hours, minutes, seconds)
    @hours = hours.to_s
    @minutes = minutes.to_s
    @seconds = seconds.to_s

    @alarm = [@hours, @minutes, @seconds]
    puts "Alarm set: #{@alarm}"

  end

  def alarm_clock()
    return @alarm
  end
end
