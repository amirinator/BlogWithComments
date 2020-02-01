class Post < ApplicationRecord
  belongs_to :user
  has_many   :comments


  default_scope { order(updated_at: :desc)}
end
