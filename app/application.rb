class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour > 12
      state = "Afternoon"
    else state = "Morning"
    end


    resp.write "Good #{state}!"

    resp.finish
end


end
