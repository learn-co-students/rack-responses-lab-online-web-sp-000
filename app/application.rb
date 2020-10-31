#Create your application with the following conditions:

#  1. If it's before noon, greet the user with "Good Morning!"
#  2. If it's after noon, greet the user with "Good Afternoon!". Remember that
#     getting the time may return results in 24 hour time! Anytime on or after 12
#     is the afternoon.
#(Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
class Application
  def call(env)
    resp = Rack::Response.new

    current_time = Time.now

    if current_time.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish

  end
end
