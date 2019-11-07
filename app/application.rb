class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now.hour < 12 ? 'morning' : 'afternoon'
    if time == 'morning'
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
