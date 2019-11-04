require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    clock = Time.now.hour


    if clock <= 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
