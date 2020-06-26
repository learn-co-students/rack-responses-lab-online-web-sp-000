class Application

  def call(env)
    time = Time.now
    resp = Rack::Response.new
    # print time.hour
    if time.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
