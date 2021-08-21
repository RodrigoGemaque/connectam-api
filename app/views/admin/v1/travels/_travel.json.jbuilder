json.id travel.id
json.date travel.date
json.route travel.route_id
json.price travel.price

json.ship travel.ship.name
json.ship_id travel.ship.id
json.image_url polymorphic_url(travel.ship.image) if travel.ship.image.attached?
json.route_info travel.route, :departure, :arrival



  