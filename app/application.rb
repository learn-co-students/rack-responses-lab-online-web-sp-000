class Application
    def call(env)
        resp = Rack::Response.new
        time = Time.now.to_s.split(" ")

       if time[1].to_i < 12
        resp.write "good morning"
       elsif time[1].to_i >= 12
        resp.write "good afternoon"
       end

       resp.finish
    end
end