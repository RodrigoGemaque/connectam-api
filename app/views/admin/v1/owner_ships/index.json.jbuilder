# json.cities do
#   json.array! @cities, :name
# end

json.array! @owner_ships do |owner_ship|
  json.partial! owner_ship
end




