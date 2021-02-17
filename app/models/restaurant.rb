class Restaurant < ApplicationRecord
  CAT = ["Chinese", "Italian", "Japanese", "French", "Belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
