class Application

  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, greeting]
  end

  def greeting
    (Time.now.hour < 12) ? "Good Morning!" : "Good Afternoon!"
  end
end
