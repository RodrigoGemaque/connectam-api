class Ticket < ApplicationRecord
  belongs_to :line_item, optional: true
end
