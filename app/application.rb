class Application
 
  def call(env)
    resp = Rack::Response.new
    time_now = Time.now.hour < 12 ? 'morning' : 'afternoon'
    if time_now == 'morning'
      resp.write "Good Morning!"
    else 
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
 
end