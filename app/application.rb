class Application
  def call(env)
    resp = Rack::Response.new
    time1 = Time.now.hour

    if time1 > 11
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end

    resp.finish
  end
end