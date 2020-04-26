
class Application

    def call(env)
        resp = Rack::Response.new

        time = Time.now()
        resp.write "The Current Time is now :\n
            
            #{time.month} / #{time.day } / #{time.year}\n   
            Hour  :#{time.hour}\n    
            Min   :#{time.min }\n    
            Second:#{time.sec }\n        
        In time Zone:  #{time.zone}\n\n\n"
        if time.hour >= 12
            resp.write "    Good Afternoon!"
        else
            resp.write "    Good Morning!"
        end
        resp.finish
    end
end
