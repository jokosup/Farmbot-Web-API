require 'spec_helper'

describe 'Device Management' do
  let(:user) { FactoryGirl.create(:user) }

  it 'adds a device' do
    sign_in user
    visit 'dashboard#/devices'
    binding.pry
  end
end
