class Timer
  attr_accessor :seconds, :minutes, :hours
  def initialize
    @seconds = 0
  end

  def time_string


    hours = 0
    minutes = 0
    seconds = @seconds
    while seconds >= 3600
      seconds -= 3600
      hours += 1
    end
    while seconds >= 60
      seconds -= 60
      minutes += 1
    end

    hours = hours.to_s
    minutes = minutes.to_s
    seconds = seconds.to_s

    padded(hours) + ":" + padded(minutes) + ":" + padded(seconds)
  end

  def padded(s)
    if s.length == 1
      "0" + s
    else
      s
    end
  end
end
