require 'faker'

FactoryBot.define do
  factory :comment do |f|
    association :user, factory: :user
    association :post, factory: :post
    f.body { Faker::String.random }
  end
end