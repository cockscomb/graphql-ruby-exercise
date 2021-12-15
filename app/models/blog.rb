class Blog < ApplicationRecord
  belongs_to :owner, class_name: 'User', foreign_key: :owner_id
  has_many :posts, foreign_key: :blog_id, dependent: :destroy
end
