class Application

    def call(env)
        resp = Rack::Response.new

        t = Time.now.hour

        if t < 12
            resp.write "Good morning!"
        else
            resp.write "Good afternoon!"
        end
    
        resp.finish
    end


end