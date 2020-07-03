require 'sinatra'
require 'json'
require './lib/takeoff_time'
include TakeoffTime

get '/takeoff_time' do
  time.to_json
end
