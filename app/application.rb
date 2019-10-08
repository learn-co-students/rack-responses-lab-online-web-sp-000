class Application
  def call(env)
    resp = Rack::Response.new



    if Time.now.hour < 12
      #resp.write :now
      resp.write "Morning"
    else#if Time.now.hour == 12 && Time.now.minute == 0
      resp.write "Afternoon"
    end

    resp.finish
  end

end
