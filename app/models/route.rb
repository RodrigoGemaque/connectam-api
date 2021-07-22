class Route < ApplicationRecord
  belongs_to :harbor
  has_many :travels
  
end
