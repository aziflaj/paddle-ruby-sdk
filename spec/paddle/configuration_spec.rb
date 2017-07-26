require 'spec_helper'

RSpec.describe 'Paddle Configuration' do
  let(:auth_code) { ENV['PADDLE_AUTH_CODE'] }

  before do
    Paddle.configure do |config|
      config.auth_code = auth_code
    end
  end

  it 'has an auth_code' do
    expect(Paddle.config.auth_code).to eq(auth_code)
  end
end
