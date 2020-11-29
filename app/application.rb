class Application

    def call(env)
        resp = Rack::Response.new

        t = Time.now
        
        if t.strftime("%k").to_i < 12
            # t.strftime("%I").to_i < 12 && t.strftime("%p") == "AM"
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end

        resp.finish
    end
end