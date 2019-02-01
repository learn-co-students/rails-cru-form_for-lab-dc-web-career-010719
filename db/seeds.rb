# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name:"The Beatles", bio:"The Fab Five")
Artist.create(name:"Aretha Franklin", bio:"The First Lady of Soul")
Genre.create(name:"Rock")
Genre.create(name:"Soul")
Genre.create(name:"Pop")
Song.create(name:"Ain't No Way", artist_id: 2, genre_id: 2)
Song.create(name:"While My Guitar Gently Weeps", artist_id: 1, genre_id: 1)
Song.create(name:"Eight Days a Week", artist_id: 1, genre_id: 3)
