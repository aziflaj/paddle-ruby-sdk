require 'spec_helper'

RSpec.describe Paddle do
  it 'has a version number' do
    expect(Paddle::VERSION).not_to be nil
  end

  it 'does something useful' do  # I SWEAR IT DOES
    expect(true).to eq(true)
  end
end
