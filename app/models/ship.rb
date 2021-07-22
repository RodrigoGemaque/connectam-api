class Ship < ApplicationRecord
  belongs_to :owner_ship
  has_many :travels

  validates :name, presence: true

  has_one_attached :image
end
