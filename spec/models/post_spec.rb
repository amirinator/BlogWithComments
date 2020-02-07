require 'rails_helper'
require 'factory_bot'

RSpec.describe Post, type: :model do
  before :each do
    @post = FactoryBot.create(:post)
  end

  it "is persisted correctly using factory builder" do
    expect(@post).to be_valid
  end

end