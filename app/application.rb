#if its before noon, greet the user with "Good Morning!"
#if its after noon, greet the user with "Good Afternoon! Getting the time may return 24 hour time. Anytime on or after 12 is the afternoon"
require 'pry'
class Application
def call(env)
    resp = Rack::Response.new
 
    t = Time.now 
    # binding.pry 
    if t.hour <= 12 
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
 
    resp.finish
  end
end