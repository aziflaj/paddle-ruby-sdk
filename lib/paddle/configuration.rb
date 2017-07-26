module Paddle
  class Configuration
    attr_reader :auth_code

    def auth_code=(auth_code)
      @auth_code = auth_code
    end
  end
end
