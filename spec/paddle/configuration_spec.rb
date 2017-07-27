require 'spec_helper'

RSpec.describe 'Paddle Configuration' do
  let(:vendor_id) { ENV['PADDLE_VENDOR_ID'] }
  let(:auth_code) { ENV['PADDLE_AUTH_CODE'] }

  before do
    Paddle.configure do |config|
      config.vendor_id = vendor_id
      config.auth_code = auth_code
    end
  end

  it 'has an auth_code' do
    expect(Paddle.config.auth_code).to eq(auth_code)
  end

  it 'has a vendor_id' do
    expect(Paddle.config.vendor_id).to eq(vendor_id)
  end
end
