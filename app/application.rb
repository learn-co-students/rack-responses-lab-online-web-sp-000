class Application

    def call(env)
        resp = Rack::Response.new
        t = Time.now
        #Look at the spec! It says time.now, not time.new, so this should be time.now
        
        if t.hour < 12
            resp.write "Good Morning!"
        else 
            resp.write "Good Afternoon!"
        end 

        resp.finish
    end
end 