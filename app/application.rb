class Application
    def call(env)
      resp = Rack::Response.new
   
      morning = Time.now(1..11)
      afternoon = Time.now(12..24)
      
      if morning 
        resp.write "Good Morning"
      end
      if afternoon 
        resp.write "Good Afternoon"
      end
      resp.finish
    end
  end
  