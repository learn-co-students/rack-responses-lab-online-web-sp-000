class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Good #{morning_or_afternoon}"    
    resp.finish  
  end

  def morning_or_afternoon
    Time.now.hour > 11 ? "Afternoon!" : "Morning!"
  end
  
end