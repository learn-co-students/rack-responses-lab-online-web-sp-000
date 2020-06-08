# if it's before noon greet user with Good Morning
#if it is after noon greet with Good Afternoon
class Application
    def call(env)
        resp = Rack::Response.new
        current_time = Time.now
        if current_time.hour >=12
            resp.write "Good Afternoon!"
        else current_time.hour <=12
            resp.write "Good Morning!"
        end
        resp.finish
    end
end
