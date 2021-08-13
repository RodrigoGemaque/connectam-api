json.id ticket.id
json.cpf ticket.cpf
json.name ticket.name
json.email ticket.email
json.ship ticket.line_item.travel.ship.name
json.departure ticket.line_item.travel.route.departure
json.arrival ticket.line_item.travel.route.arrival



# json.ship ticket.travel.ship.name
# json.price ticket.travel.price
# json.saida ticket.travel.route.departure
# json.destino ticket.travel.route.arrival
# json.travel ticket.travel, :id, :date,:route_id


# json.travels ticket.travel do |travel|
#   json.partial! 'travels/travel', travel: travel
# end