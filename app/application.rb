class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Time.now
    time = num_1.hour


    if time < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon"
    end

    resp.finish
  end

end
