require 'pry'
class Application
    def call(env)
        return [ 200, {'Content-Type' => 'text/html'}, greeting ]
    end

    def greeting # check to see what hour it is right now, and if the hour is less than 12, write Good Morning, else write Good Afternoon!
        (Time.now.hour < 12) ? ["<em>Good Morning!</em>"] : ["<em>Good Afternoon!</em>"]
    end
end
