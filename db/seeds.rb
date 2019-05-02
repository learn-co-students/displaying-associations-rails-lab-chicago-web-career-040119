# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
count = 0
10.times do
  @artist = Artist.create(name: "artist #{count}")
  5.times do
    Song.create(title: "song #{count}", artist_id: @artist.id)
  end
  count += 1
end
