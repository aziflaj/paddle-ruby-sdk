require 'paddle/error'
require 'paddle/data_types'
require 'paddle/connection'

module Paddle
  class Products
    class << self
      def list
        url = "#{Paddle.config.base_url}/product/get_products"
        result = Paddle::Connection.post(url)
        raise Paddle::Error.new(result[:error][:code], result[:error][:message]) unless result[:success]
        result[:response][:products].map do |product|
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
