class MiddleMiddleThing
  def initialize(app)
    @app = app
  end

  def call(env)
    
    puts "here is some output before sending to next rack app"
    
	  @app.call env
	  
  end
end