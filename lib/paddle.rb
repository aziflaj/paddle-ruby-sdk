require 'paddle/version'

module Paddle
  class SDK
    def self.hello
      puts "Hello Paddle::#{Paddle::VERSION}"
    end
  end
end
