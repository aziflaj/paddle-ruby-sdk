require 'paddle/version'
require 'paddle/configuration'

module Paddle
  class << self
    attr_writer :config
  end

  def self.configure
    yield(config) if block_given?
  end

  def self.config
    @config ||= Paddle::Configuration.new
  end
end
