class Comment < ApplicationRecord
  belongs_to :post
  validates :body, :post_id, presence: true
end
