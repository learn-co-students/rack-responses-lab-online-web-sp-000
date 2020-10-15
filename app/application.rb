class Application
    def call(env)
        resp = Rack::Response.new

        time = Time.now
        before_noon = 12
    
    
        if time.hour >= before_noon
        resp.write "Good Afternoon!"
        else
        resp.write "Good Morning!"
        end
    
        resp.finish
    end
end