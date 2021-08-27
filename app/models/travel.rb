class Travel < ApplicationRecord
  belongs_to :ship
  belongs_to :route

  has_many :line_items

  validates :date,:hour, :price, presence: true


end
