class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now
    case
    when time.hour.to_i < 12
      resp.write "Good Morning!"
    when time.hour.to_i >= 12
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
