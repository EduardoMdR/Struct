# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

album1 = Album.create(name: "Animals", artist: "Pink Floyd")
album2 = Album.create(name: "Californication", artist: "RHCP")
Song.create(name: "Dogs", album: album1, genre:"Rock")
Song.create(name: "Californication", album: album2, genre:"Rock n ROll")