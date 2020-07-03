module TakeoffTime
  MIN_TAKEOFF_TIME = 10
  MAX_TAKEOFF_TIME = 30

  def time
    { time: rand(MIN_TAKEOFF_TIME..MAX_TAKEOFF_TIME) }
  end
end
