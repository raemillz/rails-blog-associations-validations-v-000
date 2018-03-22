class Post < ActiveRecord::Base
  belongs_to :user
  has_many :post_tags
  has_many :posts, through: :post_tags
  validates :name, presence: true
  validates :content, presence: true
end
