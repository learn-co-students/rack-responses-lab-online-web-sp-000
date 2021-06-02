class Application

    def call(env)
        resp = Rack::Response.new
        time = Time.now
        now_string = time.strftime("%k:%M:%S")
        noon_string = "12:00:00"
        now_time = Time.strptime(now_string,"%k:%M:%S")
        noon_time = Time.strptime(noon_string,"%k:%M:%S")

        if now_time < noon_time
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
          resp.finish
    end
end