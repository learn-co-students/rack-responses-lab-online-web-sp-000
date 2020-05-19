class Application
   def call(env)
      resp = Rack::Response.new

      current_hour = Time.now.hour
      current_hour > 11 ? resp.write("Good Afternoon") : resp.write("Good Morning")
      resp.finish
   end
end
