# I can just run this file directly or use rackup and config.ru (uses port 8080)

require 'bundler/setup'
Bundler.require(:default)

require './lower_middle_thing'
require './middle_middle_thing'
require './some_high_level_app'

app = Rack::Builder.new do 
  
  use Rack::Static,
    :urls => ["/images", "/js", "/css"],
    :root => "public"
  
  use LowerMiddleThing
  use MiddleMiddleThing
  run SomeHighLevelApp
  
end

Rack::Server.start :app => app