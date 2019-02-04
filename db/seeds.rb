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

Artist.create([{ name: 'Britney Spears', bio: "Cute until she shaved her head" }, { name: 'Beyonce', bio: "she run the world"}])
brit= Artist.first
bey = Artist.last
Genre.create([{name: "pop"}, {name: "rap"}])
pop = Genre.first
rap = Genre.last
Song.create([{name: "Barbie Girl", artist_id: brit.id, genre_id: pop.id},{name: "Formation", artist_id: bey.id, genre_id: rap.id}])
