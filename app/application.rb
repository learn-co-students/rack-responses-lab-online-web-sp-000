class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, World"

    if Time.now.strftime("%p") == "AM"
      resp.write "Good Morning"
    elsif Time.now.strftime("%p") == "PM"
      resp.write "Good Afternoon"
    end
    resp.finish
  end

end