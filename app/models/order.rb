class Order < ApplicationRecord
  has_many :line_items

  validates :total_value, :status, presence: true
  
  enum status:{waiting: 0, delivered: 1}
 
  before_validation :set_price
  
  accepts_nested_attributes_for :line_items, allow_destroy: true

  private
  def set_price
    final_price = 0
    line_items.each do |li|
      final_price += li.quantity * li.travel.price
    end
    self.total_value = final_price
  end
end
