require 'spec_helper'

RSpec.describe 'Paddle Configuration' do
  let(:auth_code) { '13810b056faea70e05d8e95a271298631a4754e0103c12336e' }
  before do
    Paddle.configure do |config|
      config.auth_code = auth_code
    end
  end

  it 'has an auth_code' do
    expect(Paddle.config.auth_code).to eq(auth_code)
  end
end
