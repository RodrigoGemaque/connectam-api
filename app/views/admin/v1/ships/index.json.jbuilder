# json.harbors do
#   json.array! @harbors, :name
# end
json.ships do 
  json.array! @ships do |ship|
    json.partial! ship
  end
end


