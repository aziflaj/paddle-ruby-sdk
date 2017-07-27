require 'spec_helper'

RSpec.describe Paddle::Products do
  let(:vendor_id) { ENV['PADDLE_VENDOR_ID'] }
  let(:auth_code) { ENV['PADDLE_AUTH_CODE'] }

  before do

  end

  it 'lists products for valid configs' do
    Paddle.configure do |config|
      config.vendor_id = vendor_id
      config.auth_code = auth_code
    end

    expect{Paddle::Products.list}.to_not raise_error(Paddle::Error)

  end

  it 'throws error for invalid configs' do
    Paddle.configure do |config|
      config.vendor_id = '4'
      config.auth_code = auth_code
    end

    expect{Paddle::Products.list}.to raise_error(Paddle::Error)
  end
end
