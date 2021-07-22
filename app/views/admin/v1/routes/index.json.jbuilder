# json.cities do
#   json.array! @cities, :name
# end

json.array! @routes do |route|
  json.partial! route
end




