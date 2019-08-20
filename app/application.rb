require 'pry'

class Application
   
    def call(env)
        resp = Rack::Response.new
        x = Time.now
        if x.hour >= 12
            binding.pry
            resp.write "Good Afternoon"
        else
            resp.write "Good Morning"
        end
        resp.finish

    end
end