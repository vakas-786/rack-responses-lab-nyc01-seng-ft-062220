class Application
    def call(env)
        resp = Rack::Response.new

        if current_time >= noon
            resp.write "Good Afternoon"  
        else
            resp.write "Good Morning"      
        end
        resp.finish
    end

    def current_time
        time = Time.now
        time.strftime("%k:%M")
    end

    def noon
        time = Time.parse("12:00")
        time.strftime("%k:%M")
    end
end