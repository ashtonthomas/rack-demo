class SomeHighLevelApp
  def self.call(env)
    [200, {}, ["Hello World. You said: #{env['QUERY_STRING']} ---- \n #{env.inspect}"]]
  end
end