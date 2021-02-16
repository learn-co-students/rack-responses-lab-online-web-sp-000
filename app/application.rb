require 'pry'
class Application
 
  def call(env)
    resp = Rack::Response.new
     #binding.pry
    if Time.now.to_s.split[1].to_i < 12  
      resp.write"Good Morning" 
    else
      resp.write"Good afternoon"
    end

  resp.finish
  end
  
end
  