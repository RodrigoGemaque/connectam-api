class Ticket < ApplicationRecord
  belongs_to :ship, optional: true
  belongs_to :line_item, optional: true

  validates :name, :cpf, :email, presence: true

  # validates :line_item, presence: true, if: -> { self.status == 'in_use' }
  # enum status: { available: 1, in_use: 2, inactive: 3 }
end
