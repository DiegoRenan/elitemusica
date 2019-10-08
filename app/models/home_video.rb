class HomeVideo < ApplicationRecord
  #validates
  validates :link, presence: true, length: { maximum: 300 }

  validates :title, presence: true, length: { maximum: 34 }

end
