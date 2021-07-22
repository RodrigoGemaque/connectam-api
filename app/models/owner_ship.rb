class OwnerShip < ApplicationRecord
  has_many :ships

  validates :name, presence: true
end
