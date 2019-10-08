class Public < ApplicationRecord
  #validates
  validates :resume, presence: true, length: { maximum: 94 }

  validates :title, presence: true, length: { maximum: 12 }

  validates :image, presence: true, allow_blank: true
  
  # Associations
  has_one_attached :image
end
