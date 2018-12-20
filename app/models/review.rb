class Review < ApplicationRecord
  paginates_per 9
  validates :content, {presence: true, length: {maximum: 140}}
  validates :user_id, {presence: true}
  # belongs_to :movies
  
  def user
    return User.find_by(id: self.user_id)
  end
  
end
