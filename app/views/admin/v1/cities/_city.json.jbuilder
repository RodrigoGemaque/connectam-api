json.name city.name


json.harbors city.harbors do |harbor|
  json.partial! 'admin/v1/harbors/harbor', harbor: harbor
end