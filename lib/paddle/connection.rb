require 'rest-client'
require 'json'

module Paddle
  module Connection
    class << self
      def post(url, params = {})
        payload = config.merge(params)
        result = RestClient.post(url, payload)
        JSON.parse(result.body, symbolize_names: true)
      end


      private

      def config
        {
          vendor_id: Paddle.config.vendor_id,
          vendor_auth_code: Paddle.config.auth_code
        }
      end
    end
  end
end
