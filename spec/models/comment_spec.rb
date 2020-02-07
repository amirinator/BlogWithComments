require 'rails_helper'
require 'factory_bot'

RSpec.describe Comment, type: :model do

  before :each do
    @comment = FactoryBot.create(:comment)
  end

  it "is persisted correctly using factory builder" do
    expect(@comment).to be_valid
  end

  it "is invalid with a valid User and missing Post" do
    expect(FactoryBot.build(:comment, post: nil)).to_not be_valid
  end

  it "is invalid with a missing User and valid Post" do
    expect(FactoryBot.build(:comment, user: nil)).to_not be_valid
  end

  it "is not a valid Comment due to missing Comment body" do
    user = FactoryBot.build(:user)
    post = FactoryBot.build(:post,user: user)
    expect(Comment.new(user: user, post:post)).to_not be_valid
  end

end
