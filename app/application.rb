class Application

    def call(env)
        resp = Rack::Response.new
        
        time = Time.now.hour
        resp.write "#{time}h\n"

        time < 12 ? resp.write("Good Morning!") : resp.write("Good Afternoon!")

        resp.finish
    end

end