require 'pry'
class Application

    def call(env)
        resp = Rack::Response.new
        time = Time.now
        #morning = "Good Morning!"
        #afternoon = "Good Afternoon!"

        #resp.write Time.now.to_i >= 1200000000 ? "Good Afternoon!" : "Good Morning!"
        #resp.finish
        if time.hour >= 0 && time.hour <= 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
        resp.finish
        #binding.pry
    end

end