class Application

  def call(env)
    resp = Rack::Response.new
    time1 = Time.now.hour

    if time1 < 12
      resp.write "Good Morning!"
      #resp.write time1
    elsif time1 >= 12
      resp.write "Good Afternoon!"
      #resp.write time1
    end

    resp.finish
  end

end
