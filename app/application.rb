class Application
    def call(env)
        resp = Rack::Response.new
        if Time.now.hour.between?(0, 11)
            resp.write "Good morning"
        else
            resp.write "Good afternoon"
        end
        resp.finish
    end
end