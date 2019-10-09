class Application
  def call(env)
    rsp = Rack::Response.new
    #time = Kernel.rand(1..24)
    
    time = Time.now.hour
    if time > 12
      rsp.write("Good Afternoon!")
    else
      rsp.write("Good Morning!")
    end
    rsp.finish
  end
end