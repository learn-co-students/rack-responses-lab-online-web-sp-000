class Application

    def call(env)
      resp = Rack::Response.new
        time=Time.now
        puts time
        if time.hour>11
        resp.write "Good Afternoon"
      else
        resp.write "Good Morning"
      end
  
      resp.finish
    end
  
  end