require 'rest-client'
require 'json'

require 'paddle/error'
require 'paddle/data_types'

module Paddle
  class Products
    class << self
      def list
        url = "#{Paddle.config.base_url}/product/get_products"
        result = RestClient.post(url, {
            vendor_id: Paddle.config.vendor_id,
            vendor_auth_code: Paddle.config.auth_code
        })
        r = JSON.parse(result.body, symbolize_names: true)
        raise Paddle::Error.new(r[:error][:code], r[:error][:message]) unless r[:success]
        r[:response][:products].map do |product|
          Paddle::DataTypes::Product.new(product[:id],
                                         product[:name],
                                         product[:description],
                                         product[:base_price],
                                         product[:sale_price],
                                         product[:screenshots],
                                         product[:icon])
        end
      end
    end
  end
end
