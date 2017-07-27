module Paddle
  class Error < StandardError
    attr_reader :code
    attr_reader :message

    def initialize(code, message)
      @code = code
      @message = message
    end
  end
end
