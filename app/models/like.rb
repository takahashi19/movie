class Like < ApplicationRecord
    validates :user_id, {presence: true}
    validates :reveiws_id, {presence: true}
end
