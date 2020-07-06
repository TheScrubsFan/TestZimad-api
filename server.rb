require 'sinatra'
require 'sidekiq'
require 'sidekiq/api'
require 'sidekiq/web'
require './workers/takeoff_worker'

class App < Sinatra::Base
  post '/takeoff' do
    TakeoffWorker.perform_async params['id']

    status 202
  end
end
