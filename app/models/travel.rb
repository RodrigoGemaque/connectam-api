class Travel < ApplicationRecord
  belongs_to :ship
  belongs_to :route

  has_many :line_items

  validates :date, :price, presence: true
end
