
class Main
  require_relative 'Clock'
  require_relative 'Alarm_Clock'

  file = File.open("time.txt", "r")
  hours =  file.readline.chomp.to_i
  minutes = file.readline.chomp.to_i
  seconds = file.readline.chomp.to_i

  time = Clock.new(hours,minutes,seconds)
  puts time

  i= 0
  until i == 10 do
    seconds = clock.tick!(i)

    time_array = clock.now(hours, minutes, seconds)
    i += 1
  end
end
