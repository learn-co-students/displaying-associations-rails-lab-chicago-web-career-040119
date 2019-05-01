# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Song.destroy_all

3.times do
  Artist.create(name: Faker::Artist.name)
end

Song.create(title: "Lullaby", artist: Artist.first)
Song.create(title: "Crazy in Love", artist: Artist.second)
Song.create(title: "All the things she said", artist: Artist.third)
Song.create(title: "Chicago", artist: Artist.second)
