json.name ship.name
json.id ship.id
json.owner ship.owner_ship.name
json.travels ship.travels, :id, :date
json.tickets ship.tickets, :id, :name, :cpf, :email

json.image_url polymorphic_url(ship.image) if ship.image.attached?


