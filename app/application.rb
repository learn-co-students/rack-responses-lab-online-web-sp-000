class Application

  def call(env)
    resp = Rack::Response.new

    time = Kernel.rand(1..20)

    if Time.now.hour.between?(0, 11)      #method chaining for current time
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
