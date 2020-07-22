class Application
  def call(env)
    resp = Rack::Response.new

    current_time = Time.now

    if current_time.hour <= 11
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end

# Create your application with the following conditions.
# If its before noon, greet the user with "Good Morning!"
# If its after noon, greet the user with "Good Afternoon!". Remember that getting the time may return results in 24 hour time! Anytime on or after 12 is the afternoon.
