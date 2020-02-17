
class Application

    def call(env)
        resp = Rack::Response.new
        d = Time.now
        if(d.hour > 11)
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end
        resp.finish
    end
  
  end
  