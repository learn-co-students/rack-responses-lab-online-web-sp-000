class Application

    def call(env)
      resp = Rack::Response.new
   
        current = Time.new
   
      if  current.hour.to_i < 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
   
      resp.finish
    end
    end
  
  end