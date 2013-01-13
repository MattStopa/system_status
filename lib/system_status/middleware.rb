module SystemStatus
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      if env["REQUEST_URI"] =~ /system_status/
        [200, { "Content-Type" => "text/plain; charset=utf-8" }, ["Meow"]]
      else
        @app.call(env)
      end
    end

  end
end