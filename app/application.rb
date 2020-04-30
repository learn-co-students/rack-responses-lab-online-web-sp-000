class Application

    def call(env)
      resp = Rack::Response.new
  
      time = Time.now.hour
  
      resp.write "Time: #{time}\n"

      resp.write time < 12 ? "Good Morning!" : "Good Afternoon!"
   
    #   if time < 12
    #     resp.write "Good Morning!"
    #   else
    #     resp.write "Good Afternoon!"
    #   end
  
      resp.finish
    end
  
  end
  