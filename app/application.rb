class Application

    def call(env)
        resp = Rack::Response.new

        now = Time.now
        
        resp.write "#{now}\n"

        if Time.now.hour >= 0 && Time.now.hour <= 12
            resp.write "Good Morning!"
        elsif resp.write "Good Afternoon!"
        end

        resp.finish
    end

end
