# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :post do |f|
    association :user, factory: :user
    f.body { Faker::String.random }
    f.title { Faker::String.random }
  end
end
