class Application
  
  def call(env)
    resp = Rack::Response.new
    if Time.now.hour.between?(0, 11)
      resp.write "Morning"
    else Time.now.hour.between?(12, 24)
      resp.write "Afternoon"
    end
    resp.finish
  end
end
