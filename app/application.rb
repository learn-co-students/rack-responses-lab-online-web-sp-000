
class Application

  def call(env)
    resp = Rack::Response.new

        time = Time.new
        if (time.hour == 14)
           resp.write "Morning Afternoon"
         else
           resp.write "Morning Afternoon"
         end

        resp.finish
  end

end
