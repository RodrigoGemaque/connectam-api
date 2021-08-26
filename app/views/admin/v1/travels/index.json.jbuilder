# json.harbors do
#   json.array! @harbors, :name
# end

json.travels do
  json.array! @travels do |travel|
    json.partial! travel
  end
end

