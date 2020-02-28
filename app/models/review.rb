class Review < ApplicationRecord
  belongs_to :restaurant, dependent: :destroy
  validates :content, length: { minimum: 5 }
end
