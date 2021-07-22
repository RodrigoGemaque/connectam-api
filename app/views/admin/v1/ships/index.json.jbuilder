# json.harbors do
#   json.array! @harbors, :name
# end

json.array! @ships do |ship|
  json.partial! ship
end

