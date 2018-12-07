class User < ApplicationRecord
  has_secure_password
  
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  
  
  def reveiws
    return Reveiw.where(user_id: self.id)
  end
  
end
