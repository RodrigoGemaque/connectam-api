# json.harbors do
#   json.array! @harbors, :name
# end

json.array! @tickets do |ticket|
  json.partial! ticket
end

