require_relative 'clock'
require_relative 'alarm_clock'
require_relative 'reverse_clock'
class Main

  file = File.open("time.txt", "r") #opens file time.txt
  hours =  file.readline.chomp.to_i #reads h,m,s
  minutes = file.readline.chomp.to_i
  seconds = file.readline.chomp.to_i

  alarm_hours = file.readline.chomp.to_i # reads alarm_h/m/s
  alarm_minutes = file.readline.chomp.to_i
  alarm_seconds = file.readline.chomp.to_i

  time = Clock.new(hours,minutes,seconds) #new clock, rev_clock and alarm_clock created and their times are printed on screen
  rev_clock = Reverse_Clock.new(hours, minutes, seconds)
  alarm = Alarm_Clock.new(alarm_hours, alarm_minutes, alarm_seconds)
  puts time
  puts rev_clock
  puts alarm

  rev_hours = hours
  rev_minutes = minutes
  rev_seconds = seconds

  i= 0
  until i == 200000 do #loop repeated 200,000 as per brief
    seconds = clock.tick!(i) #each time seconds increment with tick i increases by 1
    time_array = clock.now(hours, minutes, seconds)
    i += 1
  end

  n = 0
  until n == 200000 do
    rev_seconds = rev_clock.tick!(n)#each time seconds increment with tick n increases by 1
    rev_time_array = revclock.now(rev_hours, rev_minutes, rev_seconds)
    n += 1
  end
end



