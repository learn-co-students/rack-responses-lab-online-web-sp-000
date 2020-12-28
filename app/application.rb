require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    curr_hour = Time.now.strftime("%k").to_i

    if curr_hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
