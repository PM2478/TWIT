class Post < ApplicationRecord
  belongs_to :user

  @post = Post.new
  @post.save
  
  

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 100 }
  default_scope -> { order(created_at: :desc)}
end
