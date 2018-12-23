class Like < ApplicationRecord
    validates :user_id, {presence: true}
    validates :review_id, {presence: true}
    #userとreviewといいねを紐付ける
end
