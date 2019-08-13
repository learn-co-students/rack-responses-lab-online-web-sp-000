require 'pry'

class Application
 
  def call(env)
    resp = Rack::Response.new
 
    time_1 = Time.now.hour
             
    if time_1>0 && time_1<=12
      resp.write "Good Morning!"
    elsif time_1
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
 
end