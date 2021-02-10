class Application

  def call(env)
    resp = Rack::Response.new

    after_noon ? resp.write("Good Afternoon!") : resp.write("Good Morning!")

    resp.finish
  end

  def time
    Time.now.hour
  end

  def after_noon
    time > 12
  end
end