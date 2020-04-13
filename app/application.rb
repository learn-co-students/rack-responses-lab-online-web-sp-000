class Application

    def call(env)
        resp = Rack::Response.new
        resp.write greeting_response
        resp.finish
    end

    def greeting_response
        t = Time.now
        if t.hour > 11
            "Good Afternoon!"
        else
            "Good Morning"
        end
    end

end