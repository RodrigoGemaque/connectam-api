class LineItem < ApplicationRecord
  belongs_to :travel
  belongs_to :order
  has_many :tickets

  validates :quantity, presence: true
end
