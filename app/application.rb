class Application

    def call(env)
        resp = Rack::Response.new

        (Time.now.hour>=12) ? resp.write("Good Afternoon!") : resp.write("Good Morning!")

        resp.finish
    end


    #     return [200, {'Content-Type' => 'text/html'}, response]
    # end

    # def response
    #     Time.now.hour >= 12 ? ["<p>Good Afternoon!</p>"] : ["<p>Good Morning!</p>"]
    # end

end
