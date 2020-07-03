module Takeoff
  MIN_TAKEOFF_TIME = 10
  MAX_TAKEOFF_TIME = 30

  def takeoff
    sleep rand(MIN_TAKEOFF_TIME..MAX_TAKEOFF_TIME)

    # TODO: add linkto answer
    p 'ola'
  end
end
