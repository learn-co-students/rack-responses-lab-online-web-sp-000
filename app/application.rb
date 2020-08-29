class Application
 
    def call(env)
      resp = Rack::Response.new
   
      num_1 = Kernel.rand(1..20)
      
      if num_1 < 12 
        resp.write "Good morning!"
      else
        resp.write "Good afternoon!"
      end
   
      resp.finish
    end
   
  end