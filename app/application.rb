class Application

    def call(env)
      resp = Rack::Response.new
      current_time = Time.now
      chunks = current_time.to_s.split(" ")
      if(chunks.size > 0)
        more_chunks = chunks[1].split(":")
        if(more_chunks.size >0)
            hour = more_chunks[0].to_i
            if(hour < 12)
                resp.write "Good Morning!"
            else
                resp.write "Good Afternoon!"
            end
        end
      else
      end

  
      resp.finish
    end
  
  end