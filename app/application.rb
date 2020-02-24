class Application 

#    1. If it's before noon, greet the user with "Good Morning!"
#   2. If it's after noon, greet the user with "Good Afternoon!". Remember that 
#   getting the time may return results in 24 hour time! Anytime on or after 12 is the afternoon.
 
   def call(env)
      resp = Rack::Response.new
      
      if Time.now.hour < 12
         resp.write "Good Morning!"
      else
         resp.write "Good Afternoon!"
      end
      
      resp.finish 
   end

end 

# def pretty_response
#    (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
#  end