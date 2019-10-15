class Application
    def call(env)
        resp = Rack::Response.new
        puts Time.now.hour # Returns the hour it is for ME not the test.
        if Time.now.hour < 12
            resp.write("Good Morning!")
        else
            resp.write("Good Afternoon!")
        end
        resp.finish
    end
end

