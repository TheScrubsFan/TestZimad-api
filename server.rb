require 'sinatra'
require 'sidekiq'
require 'sidekiq/api'
require 'sidekiq/web'
require './workers/takeoff_worker'

class App < Sinatra::Base
  # TODO: change to /post
  get '/takeoff' do
    TakeoffWorker.perform_async

    status 202
  end
end
