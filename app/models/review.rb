class Review < ApplicationRecord
  belongs_to :movie
  paginates_per 9
  validates :content, {presence: true, length: {maximum: 140}}
  validates :user_id, {presence: true}


  def user
    return User.find_by(id: self.user_id)
  end
  
end
