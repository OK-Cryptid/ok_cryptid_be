# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
big_foot = Cryptid.create(name: "Big Foot", range: "range 1", danger_level: "6", image: "Image 1", description: "description 1")
big_foot_sighting = big_foot.sightings.create(location: 'Millstone, PE',
                                              description: "Spotted Bigfoot along the highway near millstone. Described the creature as having looked back at them on the shoulder of the road — an encounter that ultimately lasted seconds", image: "sighting image 1", title: "title 1 ")
