class Application
  def call(env)
    resp = Rack::Response.new
    x = Time.now.hour
    resp.write "The time is #{x}\n"
    if x >= 12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end

    resp.finish
  end
end
