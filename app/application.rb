class Application
    def call(env)
        resp = Rack::Response.new

        resp.write Time.now.strftime("%H").to_i > 12 ? "Good Afternoon" : "Good Morning"

        resp.finish
    end
end