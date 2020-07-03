require 'sidekiq'
require './lib/takeoff'

class TakeoffWorker
  include Sidekiq::Worker
  include Takeoff

  def perform()
    takeoff
  end
end
