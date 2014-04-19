require 'bundler/setup'
Bundler.require(:default)

class HelloWorld
  def response
	[200, {"Content-Type" => "text/plain"}, ["Hello World"]]
  end
end

class HelloWorldApp
  def self.call(env)
    HelloWorld.new.response
  end
end

Rack::Server.start :app => HelloWorldApp