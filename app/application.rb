class Application
  def call(env)
    resp = Rack::Response.new

    resp.write "#{time}"\n"
    if time >=
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"

      resp.finish
    end

end
