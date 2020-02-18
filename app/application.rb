require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new

    if check_hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end

  def check_hour
    Time.now.hour
  end
end
