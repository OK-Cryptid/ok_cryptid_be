# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
big_foot = Cryptid.create(name: "Big Foot",
                          range: "Rocky Mountains, Appalachian Trial, Coastal Plain",
                          danger_level: "6",
                          image: "https://m.media-amazon.com/images/M/MV5BZTdlMzI2MGYtMTZkNi00OWUyLTk2YWEtNTdmYzRiNjlhM2QyXkEyXkFqcGdeQXVyMjU0MzA2NjM@._V1_.jpg",
                          description: "Sasquatch, also called Bigfoot, (from Salish se’sxac: “wild men”) a large, hairy, humanlike creature believed by some people to exist in the northwestern United States and western Canada. It seems to represent the North American counterpart of the Himalayan region’s mythical monster, the Abominable Snowman, or Yeti.")

big_foot_sighting = big_foot.sightings.create(location: 'Millstone, PE',
                                              description: "Spotted Bigfoot along the highway near millstone. Described the creature as having looked back at them on the shoulder of the road — an encounter that ultimately lasted seconds", image: "sighting image 1", title: "title 1 ", trail_links: ["thisway.com", "bigfootspotted.com"])
