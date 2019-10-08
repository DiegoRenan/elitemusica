class Bio < ApplicationRecord

  #validates
  validates :resume, presence: true, length: { maximum: 600 }

  validates :bio, length: { maximum: 2000 }, allow_blank: true

  validates :image, presence: true, allow_blank: true
  
  # Associations
  has_one_attached :image
end
