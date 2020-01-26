class Application

  def call(env)
    resp = Rack::Response.new

    t1 = Time.now
    if t1.hour <= 12
      resp.write "Good Morning!"
    else
      resp.write"Good Afternoon!"
    end
    resp.finish
  end

end
