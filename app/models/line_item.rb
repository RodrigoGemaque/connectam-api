class LineItem < ApplicationRecord
  belongs_to :order
  belongs_to :travel
  has_many :tickets

  
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :status, presence: true, on: :update

  enum status: { waiting_order: 1, preparing: 2, en_route: 3, delivered: 4 }
  before_validation :set_default_status, on: :create

  accepts_nested_attributes_for :tickets, allow_destroy: true

  def set_default_status
    self.status = :waiting_order
  end
end
