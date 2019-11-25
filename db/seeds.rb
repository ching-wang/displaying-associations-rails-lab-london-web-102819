# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "faker"

20.times do
  artist = Artist.create(
    { name: Faker::Music::RockBand.name }
  )
  Song.create(
    { title: Faker::Music::GratefulDead.song, artist_id: artist.id }
  )
end

10.times do
  Song.create(
    { title: Faker::Music::Phish.song, artist_id: Artist.all.sample.id }
  )
end
