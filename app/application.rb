#i just noticed you don't have to put require 'rack' in your application.rb file or the environment.rb file
#it's just loaded in gemfile and u use it in CLI. maybe its a cli gem.
#but note how we use Rack::Response here. yet we dont need to load it
#
class Application

    def call(env)
        resp = Rack::Response.new
        
        time = Time.now

        if time.hour < 12
            resp.write "Good Morning!"
        else 
            resp.write "Good Afternoon!"
        end

        resp.finish

    end





end
