# frozen_string_literal: true

require 'rails_helper'
require 'factory_bot'

RSpec.describe User, type: :model do
  before :each do
    @user = FactoryBot.create(:user)
  end

  it 'User model is persisted correctly using factory builder' do
    expect(@user).to be_valid
  end

  it 'User is invalid without an email address' do
    expect(FactoryBot.build(:user, email: nil)).to_not be_valid
  end

  it 'User is invalid without a password' do
    expect(FactoryBot.build(:user, password: nil)).to_not be valid
  end
end
