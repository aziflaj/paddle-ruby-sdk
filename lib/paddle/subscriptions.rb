require 'paddle/error'
require 'paddle/data_types'
require 'paddle/connection'

module Paddle
  class Subscriptions
    class << self
      def list
        url = "#{Paddle.config.base_url}/subscription/plans"
        result = Paddle::Connection.post(url)
        raise Paddle::Error.new(result[:error][:code], result[:error][:message]) unless result[:success]
        result[:response].map do |subscription|
          Paddle::DataTypes::Subscription.new(subscription[:id],
                                              subscription[:name],
                                              subscription[:billing_type],
                                              subscription[:billing_period],
                                              subscription[:initial_price],
                                              subscription[:recurring_price])
        end
      end
    end
  end
end
