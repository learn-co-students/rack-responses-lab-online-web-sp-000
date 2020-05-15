class Application

    def call(env)
      resp = Rack::Response.new
   
      if Time.now.hour.to_i > 12
        resp.write "Good Afternoon!\n"
      else 
        resp.write "Good Morning!\n"
      end
   
      resp.finish
    end
  
  end