require './server.rb'

run Rack::URLMap.new('/' => App, '/sidekiq' => Sidekiq::Web)
