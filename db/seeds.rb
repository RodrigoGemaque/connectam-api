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
c = Travel.create(id: 2, date: '10-07-2021',price: 80, hour: '12:00', ship_id: 1, route_id: 2)


c = Travel.create(id: 3, date: '10-07-2021',price: 30, hour: '12:00', ship_id: 4, route_id: 3)
c = Travel.create(id: 4, date: '12-07-2021',price: 30, hour: '12:00', ship_id: 4, route_id: 4)


c = Travel.create(id: 5, date: '15-07-2021',price: 30, hour: '12:00', ship_id: 2, route_id: 5)
c = Travel.create(id: 6, date: '18-07-2021',price: 30, hour: '12:00', ship_id: 2, route_id: 6)

# path_image = 'public/images/categories/mexican.jpg'
# c = Category.create(id: 1, title: 'mexicana')
# c.image.attach(io: File.open(path_image), filename: 'mexican.jpg')

# path_image = 'public/images/categories/italian.jpeg'
# c = Category.create(id: 2, title: 'italiana')
# c.image.attach(io: File.open(path_image), filename: 'italian.jpeg')

# path_image = 'public/images/categories/japonese.jpeg'
# c = Category.create(id: 3, title: 'japonesa')
# c.image.attach(io: File.open(path_image), filename: 'japonese.jpeg')

# path_image = 'public/images/categories/vegan.jpeg'
# c = Category.create(id: 4, title: 'vegana')
# c.image.attach(io: File.open(path_image), filename: 'vegan.jpeg')

# path_image = 'public/images/categories/peruvian.jpg'
# c = Category.create(id: 5, title: 'peruana')
# c.image.attach(io: File.open(path_image), filename: 'peruana.jpg')


# puts 'Cadastrando Restaurantes'

# # Mexican Restaurants
# path_image = 'public/images/restaurants/1.jpeg'
# r = Restaurant.create!(
#   name: 'Los Sombreros',
#   description: 'Nossa missão tem sido ajudar as pessoas a alcançar seus objetivos de saúde e bem-estar. Embora tenhamos mudado ao longo dos anos, nossos valores permaneceram os mesmos.',
#   delivery_tax: 5.50,
#   city: 'São Paulo', street: 'Bela terra',
#   number: '1393', neighborhood: 'Mercês', category_id: 1
# )
# r.image.attach(io: File.open(path_image), filename: '1.jpg')
# pc = ProductCategory.create!(title: 'Pratos Mexicanos', restaurant: r)
# prod = Product.create!(name: 'Nacho Guacamole', price: 19, description: 'Tortilhas com Guacamole',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/nachosg.jpg'), filename: 'nachosg.jpg')
# prod = Product.create!(name: 'Nacho', price: 19, description: 'Tortilhas com milho', product_category: pc)
# prod.image.attach(io: File.open('public/images/products/nachosg2.jpeg'), filename: 'nachosg2.jpeg')

# # Curitiba
# path_image = 'public/images/restaurants/1.jpeg'
# r = Restaurant.create!(
#   name: 'Los Sombreros - CWB',
#   description: 'Nossa missão tem sido ajudar as pessoas a alcançar seus objetivos de saúde e bem-estar. Embora tenhamos mudado ao longo dos anos, nossos valores permaneceram os mesmos.',
#   delivery_tax: 5.50,
#   city: 'Curitiba', street: 'Bela terra',
#   number: '1393', neighborhood: 'Mercês', category_id: 1
# )
# r.image.attach(io: File.open(path_image), filename: '1.jpg')
# pc = ProductCategory.create!(title: 'Pratos Mexicanos', restaurant: r)
# prod = Product.create!(name: 'Nacho Guacamole', price: 19, description: 'Tortilhas com Guacamole',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/nachosg.jpg'), filename: 'nachosg.jpg')
# prod = Product.create!(name: 'Nacho', price: 19, description: 'Tortilhas com milho', product_category: pc)
# prod.image.attach(io: File.open('public/images/products/nachosg2.jpeg'), filename: 'nachosg2.jpeg')

# path_image = 'public/images/restaurants/2.jpeg'
# r = Restaurant.create!(
#   name: 'Ola Que Tal',
#   description: 'Para alcançar e manter essa distinção em comida e vinho, serviço, ambiente e ambiente, o restaurante ganha reputação de primeira classe por gastronomia, hospitalidade graciosa e informada, conforto e beleza que atraem clientes novos e repetidos ano após ano.',
#   delivery_tax: 5.50,
#   city: 'São Paulo', street: 'Aminta de Barros',
#   number: '659', neighborhood: 'Centro', category_id: 1
# )
# r.image.attach(io: File.open(path_image), filename: '2.jpg')
# pc = ProductCategory.create!(title: 'Pratos Mexicanos', restaurant: r)
# prod = Product.create!(name: 'Burrito', price: 19, description: 'Tortilhas com Guacamole',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/bt.jpg'), filename: 'bt.jpg')
# prod = Product.create!(name: 'Quesadilha', price: 25, description: 'Tortilhas de queijo',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/quesa.jpeg'), filename: 'quesa.jpeg')

# #Curitiba
# path_image = 'public/images/restaurants/2.jpeg'
# r = Restaurant.create!(
#   name: 'Ola Que Tal - CWB',
#   description: 'Para alcançar e manter essa distinção em comida e vinho, serviço, ambiente e ambiente, o restaurante ganha reputação de primeira classe por gastronomia, hospitalidade graciosa e informada, conforto e beleza que atraem clientes novos e repetidos ano após ano.',
#   delivery_tax: 5.50,
#   city: 'Curitiba', street: 'Aminta de Barros',
#   number: '659', neighborhood: 'Centro', category_id: 1
# )
# r.image.attach(io: File.open(path_image), filename: '2.jpg')
# pc = ProductCategory.create!(title: 'Pratos Mexicanos', restaurant: r)
# prod = Product.create!(name: 'Burrito', price: 19, description: 'Tortilhas com Guacamole',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/bt.jpg'), filename: 'bt.jpg')
# prod = Product.create!(name: 'Quesadilha', price: 25, description: 'Tortilhas de queijo',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/quesa.jpeg'), filename: 'quesa.jpeg')

# # Italian Restaurants
# path_image = 'public/images/restaurants/3.jpeg'
# r = Restaurant.create!(
#   name: 'Bravo',
#   description: 'Estamos empenhados em usar os melhores ingredientes em nossas receitas. Nenhum alimento deixa a nossa cozinha que nós mesmos não comeríamos.',
#   delivery_tax: 3.50,
#   city: 'São Paulo', street: 'Rua via mar',
#   number: '250', neighborhood: 'Centro', category_id: 2
# )
# r.image.attach(io: File.open(path_image), filename: '3.jpg')
# pc = ProductCategory.create!(title: 'Porções', restaurant: r)
# prod = Product.create!(name: 'Berinjela à parmegiana', price: 78, description: 'Com arroz e fritas',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/berinjela.jpg'), filename: 'berinjela.jpg')
# prod = Product.create!(name: 'Fritas', price: 35, description: 'Bata frita com bacon',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/fritas.jpg'), filename: 'fritas.jpg')

# #Maceio
# path_image = 'public/images/restaurants/3.jpeg'
# r = Restaurant.create!(
#   name: 'Bravo - Maceio',
#   description: 'Estamos empenhados em usar os melhores ingredientes em nossas receitas. Nenhum alimento deixa a nossa cozinha que nós mesmos não comeríamos.',
#   delivery_tax: 3.50,
#   city: 'Maceio', street: 'Rua via mar',
#   number: '250', neighborhood: 'Centro', category_id: 2
# )
# r.image.attach(io: File.open(path_image), filename: '3.jpg')
# pc = ProductCategory.create!(title: 'Porções', restaurant: r)
# prod = Product.create!(name: 'Berinjela à parmegiana', price: 78, description: 'Com arroz e fritas',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/berinjela.jpg'), filename: 'berinjela.jpg')
# prod = Product.create!(name: 'Fritas', price: 35, description: 'Bata frita com bacon',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/fritas.jpg'), filename: 'fritas.jpg')

# path_image = 'public/images/restaurants/4.jpeg'
# r = Restaurant.create!(
#   name: 'La Pergoletti',
#   description: 'Nossa missão é estabelecer relações comerciais benéficas com diversos fornecedores que compartilham nosso compromisso com o atendimento ao cliente, qualidade e preços competitivos.',
#   delivery_tax: 6.70,
#   city: 'São Paulo', street: 'Rua Joaquim Pinto',
#   number: '929', neighborhood: 'Vila Gomes Cardim', category_id: 2
# )
# r.image.attach(io: File.open(path_image), filename: '4.jpg')
# pc = ProductCategory.create!(title: 'Fogazzas (Individuais)', restaurant: r)
# prod = Product.create!(name: 'Fogazza Bacon', price: 12, description: 'Bacon, parmesão e mussarela.',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/fogazza.jpg'), filename: 'fogazza.jpg')
# prod = Product.create!(name: 'Fogazza A moda da Casa', price: 12, description: 'Calabresa, bacon, palmito e mussarela.',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/fogazza.jpg'), filename: 'fogazza.jpg')

# # Japonese Restaurants
# path_image = 'public/images/restaurants/5.jpeg'
# r = Restaurant.create!(
#   name: 'Sushi Eterno',
#   description: 'Existimos para garantir que cada hóspede receba um serviço rápido, profissional, amigável e cortês.',
#   delivery_tax: 7.50,
#   city: 'São Paulo', street: 'Avenida Manoel Domingos Pinto',
#   number: '507', neighborhood: 'Parque Anhangüera', category_id: 3
# )
# r.image.attach(io: File.open(path_image), filename: '5.jpg')
# pc = ProductCategory.create!(title: 'Entrada', restaurant: r)
# prod = Product.create!(name: 'Temaki', price: 19.99, description: 'Enrolado de arroz com alga marinha em forma de cone',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/temaki.jpeg'), filename: 'temaki.jpeg')
# prod = Product.create!(name: 'Sashimi', price: 30.90, description: 'Peixe cru fatiado, salmao, atum e peixe prego',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/sashimi.jpg'), filename: 'sashimi.jpg')

# #Maceio
# path_image = 'public/images/restaurants/5.jpeg'
# r = Restaurant.create!(
#   name: 'Sushi Eterno - Maceio',
#   description: 'Existimos para garantir que cada hóspede receba um serviço rápido, profissional, amigável e cortês.',
#   delivery_tax: 7.50,
#   city: 'Maceio', street: 'Avenida do mar',
#   number: '2344', neighborhood: 'Belo mar', category_id: 3
# )
# r.image.attach(io: File.open(path_image), filename: '5.jpg')
# pc = ProductCategory.create!(title: 'Entrada', restaurant: r)
# prod = Product.create!(name: 'Temaki', price: 19.99, description: 'Enrolado de arroz com alga marinha em forma de cone',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/temaki.jpeg'), filename: 'temaki.jpeg')
# prod = Product.create!(name: 'Sashimi', price: 30.90, description: 'Peixe cru fatiado, salmao, atum e peixe prego',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/sashimi.jpg'), filename: 'sashimi.jpg')

# path_image = 'public/images/restaurants/6.jpeg'
# r = Restaurant.create!(
#   name: 'Okuyamah',
#   description: 'Restaurante conceituado, vencedor por 5 vezes como melhor restaurante Japones de São Paulo.',
#   delivery_tax: 8.30,
#   city: 'São Paulo', street: 'Rua Francisco Artassio',
#   number: '134', neighborhood: 'Jardim das Laranjeiras', category_id: 3
# )
# r.image.attach(io: File.open(path_image), filename: '6.jpg')
# pc = ProductCategory.create!(title: 'Entrada', restaurant: r)
# prod = Product.create!(name: 'Hossomaki 16 unidades', price: 20.90, description: 'Enrolado fino com folha de alga marinha por fora.',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/hosomaki.jpg'), filename: 'hosomaki.jpg')
# prod = Product.create!(name: 'Hot roll - 10 unidades', price: 12, description: '10 unidades.',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/hot-holl.jpg'), filename: 'hot-holl.jpg')

# #Maceio
# path_image = 'public/images/restaurants/6.jpeg'
# r = Restaurant.create!(
#   name: 'Okuyamah - Maceio',
#   description: 'Restaurante conceituado, vencedor por 5 vezes como melhor restaurante Japones de São Paulo.',
#   delivery_tax: 8.30,
#   city: 'Maceio', street: 'Rua Francisco Artassio',
#   number: '134', neighborhood: 'Jardim das Laranjeiras', category_id: 3
# )
# r.image.attach(io: File.open(path_image), filename: '6.jpg')
# pc = ProductCategory.create!(title: 'Entrada', restaurant: r)
# prod = Product.create!(name: 'Hossomaki 16 unidades', price: 20.90, description: 'Enrolado fino com folha de alga marinha por fora.',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/hosomaki.jpg'), filename: 'hosomaki.jpg')
# prod = Product.create!(name: 'Hot roll - 10 unidades', price: 12, description: '10 unidades.',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/hot-holl.jpg'), filename: 'hot-holl.jpg')

# # Vegan Restaurants
# path_image = 'public/images/restaurants/7.jpeg'
# r = Restaurant.create!(
#   name: 'Club Life',
#   description: 'NOSSA ESPECIALIDADE. pratos vegetais de alta qualidade,com opções de alimentos integrais, sem glúten e sem lactose.',
#   delivery_tax: 5.70,
#   city: 'São Paulo', street: 'Alameda dos Uapês',
#   number: '933', neighborhood: 'Planalto Paulista', category_id: 4
# )
# r.image.attach(io: File.open(path_image), filename: '7.jpg')
# pc = ProductCategory.create!(title: 'Saladas, molhos e wraps', restaurant: r)
# prod = Product.create!(name: 'Coleslaw', price: 8.99, description: 'Repolho roxo, couve, cenoura, cebola, maionese de castanha e xylitol',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/coleslaw.jpg'), filename: 'coleslaw.jpg')
# prod = Product.create!(name: 'Side salad', price: 9.90, description: 'Mix de folhas com cenoura ralada, tomatinho sweet e semente de girassol.',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/side-salad.jpeg'), filename: 'side-salad.jpeg')

# path_image = 'public/images/restaurants/8.jpeg'
# r = Restaurant.create!(
#   name: 'Casa Natural',
#   description: 'Oferecemos, desde 1981, refeições ovo-lacto-vegetarianas, leves, saudáveis, balanceadas e principalmente saborosas, procurando aliar o sabor, a qualidade de vida e o bem-estar dos clientes.',
#   delivery_tax: 8.30,
#   city: 'São Paulo', street: 'Rua Natal',
#   number: '938', neighborhood: 'Cantinho do Céu', category_id: 4
# )
# r.image.attach(io: File.open(path_image), filename: '8.jpg')
# pc = ProductCategory.create!(title: 'Saladas, molhos e wraps', restaurant: r)
# prod = Product.create!(name: 'Salada de quinoa', price: 20.90, description: 'Alface americana, roxa, frisee, quinoa cozida, cenoura, tomate, damasco dessecado, amendoa crua.',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/salada-de-quinoa.jpg'), filename: 'salada-de-quinoa.jpg')
# prod = Product.create!(name: 'Coleslaw', price: 11, description: 'Repolho roxo, couve, cenoura, cebola, maionese de castanha e xylitol',  product_category: pc)
# prod.image.attach(io: File.open('public/images/products/coleslaw2.jpeg'), filename: 'coleslaw2.jpeg')