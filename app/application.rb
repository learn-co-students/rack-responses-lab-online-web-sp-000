class Application

def call(env)
  resp = Rack::Response.new
  time = Time.now

    if time.hour < 12
      resp.write "Good Morning!"
    end

    if time.hour > 12
      resp.write "Good Afternoon"
    end
    resp.finish
  end

end
