class Application

def call(env)
resp = Rack::Response.new

time = Time.now.hour

if time <= 12
  resp.write "Good Morning!"
else
  resp.write "Good Afternoon!"
end

resp.finish
end

end


#to see on webpage: rackup config.ru and copy paste IP into browser
#ip: 67.205.182.198:38944
#current time = 6:57pm, so it displays "Good Afternoon!"
#control C to exit
#can change it to any text, and it will show up on browser with the same ip address 
