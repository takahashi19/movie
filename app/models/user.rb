class User < ApplicationRecord
  has_secure_password
  
  validates :name, {presence: true}
  # validates :email, {presence: true, uniqueness: true}
  validates :email, presence: true, length: { maximum: 255 },#メアドの長さ
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },#メアドが正規であるか
                    uniqueness: { case_sensitive: false }#重複防止
  
  def reviews
    return Review.where(user_id: self.id)
  end
  
end
