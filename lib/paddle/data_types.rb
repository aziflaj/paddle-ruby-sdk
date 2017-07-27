module Paddle
  module DataTypes
    class Product
      attr_reader :id,
                  :name,
                  :description,
                  :base_price,
                  :sale_price,
                  :screenshots,
                  :icon

      def initialize(id, name, description, base_price, sale_price, screenshots, icon)
        @id = id
        @name = name
        @description = description
        @base_price = base_price
        @sale_price = sale_price
        @screenshots = screenshots
        @icon = icon
      end
    end

    class Subscription
      attr_reader :id,
                  :name,
                  :billing_type,
                  :billing_period,
                  :initial_price,
                  :recurring_price

      def initialize(id, name, billing_type, billing_period, initial_price, recurring_price)
        @id = id
        @name = name
        @billing_type = billing_type
        @billing_period = billing_period
        @initial_price = initial_price
        @recurring_price = recurring_price
      end
    end
  end
end
