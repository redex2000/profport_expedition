class SimpleMiddleware
  def initialize(app)
    @app = app
  end


  def call(env)
    start = Time.now
    status, headers, body = @app.call(env)
    Rails.logger.debug("время #{Time.now - start}")
    [status, headers, body]
  end
end