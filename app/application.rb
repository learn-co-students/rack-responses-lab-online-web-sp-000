require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now

    resp.finish
  end

end
