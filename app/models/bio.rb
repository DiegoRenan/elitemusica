class Bio < ApplicationRecord

  #validates

  validates :resume, presence: true, length: { maximum: 600 }

  validates :bio, length: { maximum: 2000 }, allow_blank: true
end
