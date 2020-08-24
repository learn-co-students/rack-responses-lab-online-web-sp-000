class Application
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, time_sensitive_response ]
  end

  def time_sensitive_response
    (Time.now.hour.to_i) < 12 ?  ["Good Morning!"] : ["Good Afternoon!"]
  end
end