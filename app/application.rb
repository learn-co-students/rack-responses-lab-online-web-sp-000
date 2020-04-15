class Application
  def call(env)
    t = Time.now
    resp = Rack::Response.new
    
    resp.write t.hour >= 12? "Good Afternoon!" : "Good Morning!"
    
    resp.finish
  end
end