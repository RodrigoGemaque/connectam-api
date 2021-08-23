# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.destroy_all
Harbor.destroy_all
OwnerShip.destroy_all
Ship.destroy_all
Route.destroy_all

puts 'Criando Cidades'

c = City.create(id: 1, name: 'Santarem')
c = City.create(id: 2, name: 'Prainha')
c = City.create(id: 3, name: 'Alenquer')
c = City.create(id: 4, name: 'Monte Alegre')

puts 'Criando Portos '

d = Harbor.create(id: 1, name: 'Porto do Dr', city_id: 1)
d = Harbor.create(id: 2, name: 'Porto de Prainha', city_id: 2)
d = Harbor.create(id: 3, name: 'Porto de Alenquer', city_id: 3)
d = Harbor.create(id: 4, name: 'Porto de Monte Alegre', city_id: 4)


puts 'Criando Rotas '

d = Route.create(id: 1, departure: Harbor.first.city.name ,arrival: Harbor.second.city.name, harbor_id: 1)
d = Route.create(id: 2, departure: Harbor.second.city.name ,arrival: Harbor.first.city.name, harbor_id: 2)

d = Route.create(id: 3, departure: Harbor.first.city.name ,arrival: Harbor.third.city.name, harbor_id: 1)
d = Route.create(id: 4, departure: Harbor.third.city.name ,arrival: Harbor.first.city.name, harbor_id: 2)

d = Route.create(id: 5, departure: Harbor.first.city.name ,arrival: Harbor.third.city.name, harbor_id: 1)
d = Route.create(id: 6, departure: Harbor.third.city.name ,arrival: Harbor.first.name, harbor_id: 2)

d = Route.create(id: 7, departure: Harbor.first.city.name ,arrival: Harbor.fourth.city.name, harbor_id: 1)
d = Route.create(id: 8, departure: Harbor.fourth.city.name ,arrival: Harbor.first.city.name, harbor_id: 2)


puts 'Criando Donos de Embarcacoes '
c = OwnerShip.create(id: 1, name: 'Erlon Rocha')
c = OwnerShip.create(id: 2, name: 'Sergio Ramos')
c = OwnerShip.create(id: 3, name: 'Marcos Rogerio')


puts 'Criando Embarcacoes '

path_image = 'public/images/ships/ship.jpg'
c = Ship.create(id: 1, name: 'Golfinho do Mar',  owner_ship_id: 1)
c.image.attach(io: File.open(path_image), filename: 'ship.jpg')

path_image = 'public/images/ships/ship2.jpg'
c = Ship.create(id: 2, name: 'Ana Beatriz',  owner_ship_id: 1)
c.image.attach(io: File.open(path_image), filename: 'ship2.jpg')


path_image = 'public/images/ships/ship3.jpg'
c = Ship.create(id: 3, name: 'Sao Bartolomeu',  owner_ship_id: 2)
c.image.attach(io: File.open(path_image), filename: 'ship3.jpg')

path_image = 'public/images/ships/ship4.jpg'
c = Ship.create(id: 4, name: 'Cidade de Oriximina',  owner_ship_id: 3)
c.image.attach(io: File.open(path_image), filename: 'ship4.jpg')

path_image = 'public/images/ships/ship5.jpg'
c = Ship.create(id: 5, name: 'Almirante Barrose',  owner_ship_id: 3)
c.image.attach(io: File.open(path_image), filename: 'ship5.jpg')


puts 'Criando Viagens'
c = Travel.create(id: 1, date: '07-07-2021',price: 80, hour: '12:00', ship_id: 1, route_id: 1)
c = Travel.create(id: 2, date: '10-07-2021',price: 80, hour: '20:00', ship_id: 1, route_id: 2)


c = Travel.create(id: 3, date: '10-07-2021',price: 30, hour: '15:40', ship_id: 4, route_id: 3)
c = Travel.create(id: 4, date: '12-07-2021',price: 30, hour: '12:00', ship_id: 4, route_id: 4)


c = Travel.create(id: 5, date: '15-07-2021',price: 30, hour: '13:00', ship_id: 2, route_id: 5)
c = Travel.create(id: 6, date: '18-07-2021',price: 30, hour: '12:00', ship_id: 2, route_id: 6)
