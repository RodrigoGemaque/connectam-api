# json.harbors do
#   json.array! @harbors, :name
# end

json.array! @harbors do |harbor|
  json.partial! harbor
end

