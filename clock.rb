class Clock
  attr_accessor :hours, :minutes, :seconds #makes hours, minutes, seconds available

  def initialize(hours, minutes,seconds) #initializes h,m,s
    @hours = hours
    @minutes = minutes
    @seconds = seconds
  end

  def current_time(x, y, z)  # checks that the current time is in the correct format
  @hours = x
  @minutes = y
  @seconds = z

  @current_time = current_time(@hours, @minutes, @seconds)
  end

  def to_s
    puts "#{@hours}:#{@minutes}:#{@seconds}"
  end

  def tick #increments the clock ie ticking
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

