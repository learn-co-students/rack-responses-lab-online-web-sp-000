class Application
    def call(env)
        resp = Rack::Response.new
        resp.write(calc_time_greeting)
        resp.finish
    end

    def calc_time_greeting
        current_hour = Time.now.hour
        if (current_hour < 12)
            "Good Morning!"
        elsif (current_hour >= 12)
            "Good Afternoon!"
        end
    end
end