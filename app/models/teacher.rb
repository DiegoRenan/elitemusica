class Teacher < ApplicationRecord
  #validates
  validates :name, presence: true, length: { maximum: 30 }

  validates :job, presence: true, length: { maximum: 30 }
  
  validates :image, presence: true, allow_blank: true

  # Associations
  has_one_attached :image
end
