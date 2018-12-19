class Whatsnew < ApplicationRecord
    validates :news, {presence: true, length: {maximum: 100}}
end
