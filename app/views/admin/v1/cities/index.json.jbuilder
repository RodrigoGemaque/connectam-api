# json.cities do
#   json.array! @cities, :name
# end

json.array! @cities do |city|
  json.partial! city
end




