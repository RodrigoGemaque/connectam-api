namespace :dev do

  
   desc "Added fake files"
   task add_files: :environment do
    #  3.times do |i|
    #    City.create!(
    #      name: Faker::Address.city 
    #    )
    #  end
     3.times do |i|
      OwnerShip.create!(
         name: Faker::Name.name
       )
     end
    #  2.times do |i|
    #   Harbor.create!(
    #      name: Faker::Address.city,
    #      city_id: rand(1..3)
    #    )
    #  end
    end


    task add_ships: :environment do
      1.times do |i|
       Ship.create!(
          name: "F/B Ana Beatriz",
          owner_ship_id: rand(1..3)
        )
      end
      1.times do |i|
        Ship.create!(
           name: "F/B Sao Bartolomeu",
           owner_ship_id: rand(1..3)
         )
       end
    end

  task add_data: :environment do
    1.times do |i|
      City.create!(
        name: "Prainha"
      )
    end
    1.times do |i|
      City.create!(
        name: "Santarem"
      )
    end
    1.times do |i|
      Harbor.create!(
        name: "Porto das Docas",
        city_id: 2
      )
    end
    1.times do |i|
      Harbor.create!(
        name: "Porto de Prainha",
        city_id: 1
      )
    end
    
  end

  task add_routes: :environment do
    
      
      1.times do |i|
        Route.create!(
          departure: Harbor.second.city.name,
          arrival: Harbor.first.city.name,
          harbor_id: 2
        )
     end
    
  end
  task add_travel: :environment do
    1.times do |i|
      Travel.create!(
        date: Faker::Date.between(from: '2021-04-01', to: '2021-05-30'),
        hour: "16:00",
        price: 80,
        ship_id: 2,
        route_id: 2
      )
    end
  
  end

  task add_tickets: :environment do
    4.times do |i|
      Ticket.create!(
        date: Faker::Date.between(from: '2021-04-19', to: '2021-04-26'),
        status: 1,
        travel_id:rand(1..4)
      )
    end
  end



 
 end