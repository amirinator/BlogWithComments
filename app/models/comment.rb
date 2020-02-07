class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates_presence_of :body

  default_scope { order(updated_at: :asc)}
  
end
