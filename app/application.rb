class Application

    def call(env)
        resp = Rack::Response.new
        # current time as string "%H:%M:%S"
        time = Time.now.strftime("%H:%M")

        # If it's before noon, greet the user with "Good Morning!"
        # If it's after noon, greet the user with "Good Afternoon!"

        if time[0,2].to_i <= 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end
        resp.finish
    end
end


=begin

# alt_solution

def call (env)
    resp = Rack::Response.new
    now = Time.now
    if now.hour >= 12
        resp.write "Good Afternoon"
    else
        resp.write "Good Morning"
    end
    resp.finish
end

=end