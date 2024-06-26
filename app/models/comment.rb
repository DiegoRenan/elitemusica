class Comment < ApplicationRecord
  #validates
  validates :comment, presence: true, length: { maximum: 200 }

  validates :name, presence: true, length: { maximum: 24 }

  validates :image, presence: true, allow_blank: true
  
  # Associations
  has_one_attached :image
end
