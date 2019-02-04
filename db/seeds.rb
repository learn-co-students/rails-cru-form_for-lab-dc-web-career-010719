# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Genre.destroy_all
Song.destroy_all


artists = Artist.create([{name: "Marshmello", bio: "A masked popular edm artist"},
                      {name: "ADTR", bio: "A group from FL that has pop punk and hardcore tunes"}])

genres = Genre.create([{name: "EDM"},
                {name: "Rock"}])

song1 = Song.create([{name: "Find Me", artist_id: artists[0].id, genre_id: genres[0].id},
                  {name: "Right Back at it Again", artist_id: artists[1].id, genre_id: genres[1].id}])