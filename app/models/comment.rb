class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  default_scope { order(updated_at: :asc)}
  
end
