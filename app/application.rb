require 'pry'
class Application

    def call(env)
      resp = Rack::Response.new
      x = Time.now
    #   binding.pry

  
      if x.strftime("%k").to_i <= 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
  
      resp.finish
    end
  
  end