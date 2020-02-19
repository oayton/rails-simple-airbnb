# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
restaurants_attributes = [{ name: 'Lovely Caravan in a Wild Setting',
  address: 'Patagonia Desert',
  description: 'A lovely summer feel for this spacious caravan unit. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 150,
  number_of_guests: 4,
  picture_url: "https://source.unsplash.com/random/800x600/?airbnb,house"
},
{ name: 'Unique Boat with plenty of exploring options!',
  address: 'Sydney Harbour, Sydney',
  description: 'Lovely boat docked at Sydney Harbour - able to undock and tour the harbour.. Two single bedrooms, open plan living area, small kitchen and a spacious deck for sunbathing',
  price_per_night: 180,
  number_of_guests: 6,
  picture_url: "https://source.unsplash.com/random/800x600/?airbnb,house"
},
{ name: 'Summer Villa in on the seafront',
  address: 'Byron Bay, Australia',
  description: 'Converted restaurant on the seafront. Plenty of space and perfect for kids! Open plan living area.',
  price_per_night: 75,
  number_of_guests: 6,
  picture_url: "https://source.unsplash.com/random/800x600/?airbnb,house"
},
{ name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  picture_url: "https://source.unsplash.com/random/800x600/?airbnb,house"
}]
Flat.create!(restaurants_attributes)
puts 'Finished!'
