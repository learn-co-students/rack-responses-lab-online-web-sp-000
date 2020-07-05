require 'pry'
class Application

    def call(env)
        resp = Rack::Response.new
        t = Time.now
        time = (t.to_s.split(' ')[1]).to_i

        if time < 12 
            resp.write "Good Morning!"
        elsif time >= 12 
            resp.write "Good Afternoon!"
        end 
        resp.finish
    end 
    
end 