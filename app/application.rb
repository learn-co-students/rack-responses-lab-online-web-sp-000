class Application
  def call(env)
    resp = Rack::Response.new 

    greeting = (0..11).include?(Time.now.hour) ? 'Morning' : 'Afternoon'

    resp.write "Good #{greeting}!"

    resp.finish
  end
end