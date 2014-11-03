class Alarm_Clock < Clock

  def initialize(hours, minutes, seconds)
    @hours = hours
    @minutes = minutes
    @seconds = seconds

    @alarm = [@hours, @minutes, @seconds]
    puts "Alarm set: #{@alarm}"

  end

  def alarm_clock()
    return @alarm
  end
end
