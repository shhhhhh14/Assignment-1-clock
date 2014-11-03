class Clock
  attr_accessor :hours, :minutes, :seconds

  def initialize(hours, minutes,seconds)
    @hours = hours.to_s
    @minutes = minutes.to_s
    @seconds = seconds.to_s
  end

  def to_s
    puts "#{@hours}:#{@minutes}:#{@seconds}"
  end

  def tick
    @seconds += 1
    case
      when @seconds > 59
        @minutes += 1
        @seconds = 0
      when @minutes > 59
        @hours += 1
        @minutes = 0
      when @hours > 23
        @hours = 0
    end
  end



end
