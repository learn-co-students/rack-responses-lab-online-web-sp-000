class Application
    #If it's before noon, greet the user with "Good Morning!"
    #If it's after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime on or after 12 is the afternoon.
    def call(env)
      resp = Rack::Response.new
      now = Time.now
      if now.hour < 12
        resp.write "Good Morning"
      else
        resp.write "Good Afternoon"
      end
      resp.finish
    end
  
    # def call(env)
    #     resp = Rack::Response.new
    #     now = Time.now
    #     if now.hour >=12
    #       resp.write "Good Afternoon"
    #     else
    #       resp.write "Good Morning"
    #     end
    #     resp.finish
    # end
end
