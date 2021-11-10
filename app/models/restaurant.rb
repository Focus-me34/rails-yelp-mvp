class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: :required
  validates :address, presence: :required
  validates :category, presence: :required, inclusion: { in: %w[chinese italian japanese french belgian] }
end
