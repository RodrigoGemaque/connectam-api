class Harbor < ApplicationRecord
  belongs_to :city
  has_many :routes

  validates :name, presence: true
end
