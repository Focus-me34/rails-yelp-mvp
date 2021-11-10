class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: :required
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :content, presence: :required
end
