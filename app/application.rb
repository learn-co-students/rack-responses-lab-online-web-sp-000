# require 'pry'
class Application
 
  def call(env)
    resp = Rack::Response.new
 
  # time_1 = Kernel.rand(1..12)
  # time_2 = Kernel.rand(12..24)
  
 
# binding.pry
    # resp.write "#{time_1}\n"
    # resp.write "#{time_2}\n"
    # resp.write "#{Time.now}\n"
    
    current_time = Time.now
  
    
    if current_time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
 
    resp.finish
  end
 
end