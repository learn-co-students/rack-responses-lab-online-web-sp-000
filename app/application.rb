class Application
  
  def call(env)
    resp = Rack::Response.new
    
    t = Time.now
    
    hour = t.strftime('%H').to_i
    
    if hour < 12
      resp.write "Good Morning!"
    elsif hour > 12
      resp.write "Good Afternoon!"
    end
    
    resp.finish
  end
  
end