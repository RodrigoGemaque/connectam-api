class City < ApplicationRecord
  has_many :harbors

  validates :name, presence: true
end
