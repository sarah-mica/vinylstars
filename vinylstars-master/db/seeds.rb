# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

artist_list = [
    "Panic! at the Disco",
    "Justin Bieber",
    "Jason Derulo",
    "Bassnectar",
    "Zeds Dead",
    "Michael Buble",
    "Coldplay",
    "Linkin Park",
    "Queen",
    "Aerosmith",
    "Illenium",
    "Marshmello",
    "Shakira",
    "BTS",
    "Jason Derulo",
    "Lil Wayne",
    "Kanye West",
    "Lady Gaga",
    "Madonna",
    "Miley Cyrus",
    "Selena Gomez",
    "Johann Sebastian Bach",
    "Wolfgang Amadeus Mozart",
    "Ludwig van Beethoven"
]

condition_list = %w[New Excellent Good Fair Poor]

category_list = [
    "Pop",
    "Rock",
    "Hip Hop",
    "R&B",
    "Classical",
    "Jazz",
    "Country",
    "Folk",
    "Indie",
    "Latin",
    "Electronic",
    "Punk",
    "Reggae",
    "Metal",
    "Blues"
]

artist_list.each do |name|
  Artist.create( name: name )
end

condition_list.each do |name|
  Condition.create( name: name )
end

category_list.each do |name|
  Category.create( title: name )
end