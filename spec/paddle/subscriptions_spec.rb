require 'spec_helper'

RSpec.describe Paddle::Subscriptions do
  context 'with valid credentials' do
    let(:vendor_id) { ENV['PADDLE_VENDOR_ID'] }
    let(:auth_code) { ENV['PADDLE_AUTH_CODE'] }

    before do
      Paddle.configure do |config|
        config.vendor_id = vendor_id
        config.auth_code = auth_code
      end
    end

    describe '.list' do
      it 'lists products for valid configs' do
        expect { Paddle::Subscriptions.list }.to_not raise_error
      end
    end
  end

  context 'with invalid credentials' do
    before do
      Paddle.configure do |config|
        config.vendor_id = '123456789'
        config.auth_code = 'invalid auth code'
      end
    end

    describe '.list' do
      it 'throws error for invalid configs' do
        expect { Paddle::Subscriptions.list }.to raise_error(Paddle::Error)
      end
    end
  end
end
