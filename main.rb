class Main
  require_relative 'Clock'
  require_relative 'AlarmClock'

  file = File.open("time.txt", "r")
  hours =  file.readline.chomp
  minutes = file.readline.chomp
  seconds = file.readline.chomp

  time = Clock.new(line[0],line[1],line[2])
  puts time.to_s

  i= 0
  until i == 10 do
    seconds = clock.tick!(i)

    time_array = clock.now(hours, minutes, seconds)
    i += 1
  end
end
