class Application

  def call(env)
    resp = Rack::Response.new
    
    resp.write "#{Time.now.hour < 12 ? "Good Morning!" : "Good Afternoon!"}"
    #shorter/same as 
    # if Time.now.hour < 12 
    # resp.write "Good Morning!" 
    # else 
    # resp.write "Good Afternoon!"
    
    resp.finish
    end 
end 