require 'rack'

class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour < 12
      resp.write "Good morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
