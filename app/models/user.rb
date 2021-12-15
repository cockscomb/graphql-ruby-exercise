class User < ApplicationRecord
  has_many :blogs, foreign_key: :owner_id, dependent: :destroy
  has_many :posts, foreign_key: :author_id
end
