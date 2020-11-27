class Apprication

    def call(env)
        resp = Rack::Response.new

        timenow = Time.new
        
        if timenow.hour > 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end

        resp.finish
    end
end