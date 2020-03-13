class Application

  def call(env)
    resp = Rack::Response.new

    # check for current time and hour
    current_time = Time.now.hour

    # if hour is before noon, print morning greeting
    # if hour is after noon, print afternoon greeting
    if current_time <= 12
      resp.write "Good Morning!"
    else 
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
