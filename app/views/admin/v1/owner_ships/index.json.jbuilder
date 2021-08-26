# json.cities do
#   json.array! @cities, :name
# end

# json.array! @owner_ships do |owner_ship|
#   json.partial! owner_ship
# end




json.owner_ships do
  json.array! @owner_ships, :id, :name, :email, :profile
  # json.array! @coupons ,:id, :code, :status, :discount_value, :due_date
end