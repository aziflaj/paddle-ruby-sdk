module Paddle
  class Configuration
    attr_reader :base_url
    attr_reader :auth_code
    attr_reader :vendor_id

    def initialize
      @base_url = 'https://vendors.paddle.com/api/2.0'
    end

    def auth_code=(auth_code)
      @auth_code = auth_code
    end

    def vendor_id=(vendor_id)
      @vendor_id = vendor_id
    end
  end
end
