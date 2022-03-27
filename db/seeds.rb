# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'factory_bot_rails'
include FactoryBot::Syntax::Methods


Sighting.destroy_all
Cryptid.destroy_all

#cryptids
bigfoot = create(:cryptid, name: "Bigfoot", range: "Rocky Mountains, Appalachian Trial, Coastal Plain", danger_level: "6", image: "https://bit.ly/3JKsNDs", description: "Bigfoot, also called Sasquatch (from Salish se’sxac: “wild men”) is a large, hairy, humanlike creature described as ranging from 6 to 15 feet tall. It is observed standing on two feet, often giving off a foul smell, and moving silently or emitting a high-pitched cry. Footprints have measured up to 24 inches in width.")
mothman = create(:cryptid, name: "Mothman", range: "West Virginia, Chicago", image: "https://bit.ly/3INwjLP", description: "Mothman is a black 10-foot creature with wings and red eyes.")
nightcrawler = create(:cryptid, name: "Nightcrawler", range: "California", image: "https://bit.ly/37Yiei1", description: "Nightcrawlers appear to be relatively short creatures (approx. 1.5 meters) with most of their height being made up of their legs as they possess an extremely small upper body. It is an extremely thin, white humanoid with no discernible arms.")
chupacabra = create(:cryptid, name: "Chupacabra", range: "Southwestern US, Puerto Rico, Maine", image: "https://bit.ly/3wGyYov", description: "The chupacabra, literally 'goat-sucker' in Spanish, is described as dog-like or reptilian and alien-like. A heavy creature, approximately the size of a small bear, with a row of spines reaching from the neck to the base of the tail, its name comes from the creature's reported vampirism-- it is said to attack and drink the blood of livestock, particularly goats.")
tommyknocker = create(:cryptid, name: "Tommyknocker", range: "underground Pennsylvania, Colorado, Nevada, California", image: "https://bit.ly/3qDsItE", description: "A subterranean gnome-like creature described as a littler person approximately 2ft tall, with a disproportionately large head, long arms, wrinkled skin, and white whiskers. It sometimes wears a tiny version of standard miner's garb and commits random mischief, such as stealing miners' unattencded tools and food.")
skinwalker = create(:cryptid, name: "Skin-walker", range: "unknown", image: "https://bit.ly/3uzpUPx", description: "A skin-walker is a type of harmful witch who has the ability to turn into, possess, or disguise themselves as an animal for the purpose of committing harm. Skin-walkers are not well understood outside of Navajo culture, mostly due to reluctance to discuss the subject with outsiders.")
alien = create(:cryptid, name: "Alien", range: "unknown", image: "https://bit.ly/3tHKvBO", description: "Also called extraterrestrial life, aliens are intelligent beings that do not originate from earth.")
nessie = create(:cryptid, name: "Loch Ness Monster", range: "Scottish Highlands", image: "https://bit.ly/3Nons6V", description: "A creature affectionately known as Nessie, it is a large, long-necked creature that inhabits Loch Ness in the Scottish Highlands.")

#sightings

#bigfoot
bfoot_sighting_1 = create(:sighting, cryptid: bigfoot, location: 'Millstone, PE', description: "Spotted Bigfoot along the highway near millstone. Described the creature as having looked back at them on the shoulder of the road — an encounter that ultimately lasted seconds", image: "sighting image 1")
bfoot_sighting_2 = create(:sighting, cryptid: bigfoot, description: 'A youth group was camping in the Marble Mountain Wilderness when leader Jim Mills noticed a strange-looking creature skulking along a ridge nearby.')
bfoot_sighting_3 = create(:sighting, cryptid: bigfoot, description: 'A hiker was walking when he spotted a large creature to the left in the woods. As he approached, the creature stood up on two legs and started throwing rocks at him.')

#mothman
mman_sighting_1 = create(:sighting, cryptid: mothman, description: 'Five gravediggers claimed to see a human-like figure soaring just above them in the autumn trees.')
mman_sighting_2 = create(:sighting, cryptid: mothman, description: 'A man was driving along State Route 2 saw something jump from tree to tree. He pulled off the road and snapped some pictures. In the pictures, the creature appears to have wings with pointed tips and long legs, bent at an awkward angle.')
mman_sighting_3 = create(:sighting, cryptid: mothman, description: 'A man saw something that resembled a humanoid pterodactyl flying awkwardly.')

#nightcrawler
ncrawler_sighting_1 = create(:sighting, cryptid: nightcrawler, description: 'A man put up trail cameras in his yard to see what was causing his dogs to bark during the night. The cameras captured images of strange pale, small, armless creatures walking.')
ncrawler_sighting_2 = create(:sighting, cryptid: nightcrawler, description: 'A 17 year old motorist saw a strange thing on the side of the road when driving at night. It was thin and pale with long legs, and moved oddly as if disjointed.')
ncrawler_sighting_3 = create(:sighting, cryptid: nightcrawler, description: 'A video captured on home surveillance system shows a white creature with long legs and no upper body walking slowly across the yard.')

#chupacabra
chcabra_sighting_1 = create(:sighting, cryptid: chupacabra, description: 'A woman spotted a creature standing upright, resembling a reptilian kangaroo with huge red eyes. It ran into the brush when she screamed. Later, the livestock on the property were found to be dead. They were not eaten or mutilated, but were drained of blood.')
chcabra_sighting_2 = create(:sighting, cryptid: chupacabra, description: 'Two seven year old boys described seeing a dog-like creature with a row of spines down its back standing on its hind legs near the barn. Six of the family goats were found drained of blood approximately 40 feet away from where the creature had been lurking.')
chcabra_sighting_3 = create(:sighting, cryptid: chupacabra, description: 'A man saw a large black-haired creature with red eyes and clawed hands come out of the trees and attack the family dog. He ran to get his gun, but when he returned, the creature was gone and the family dog was left dead with puncture wounds to neck.')

#tommyknocker
tknocker_sighting_1 = create(:sighting, cryptid: tommyknocker, description: 'A miner heard the voice of a young boy calling for help while deep inside the mines. Coworkers warned him not to follow the voice, but he reportedly felt compelled to make sure the boy was safe. When he went into a tunnel to search for the child, coworkers reported that they heard knocking and whispering sounds and shouted for him to turn back. He responded that he thought he saw a small figure perched high up in the cave. The tunnel then collapsed, killing him.')
tknocker_sighting_2 = create(:sighting, cryptid: tommyknocker, description: 'Four men exploring a cave area started hearing a voice whispering their names, and a sequence of knocking from deeper in the cave. Two of the men felt it was a warning and decided to exit the cave while the other two stayed behind, laughing and jokingly calling out to the voices. The two men that remained were crushed in a sudden cave-in ten minutes later.')
tknocker_sighting_3 = create(:sighting, cryptid: tommyknocker, description: 'A group of men working in a local mine reported to their supervisor that when working in a certain area, they have been getting pelted with rocks, their tools are being taken, their lights keep inexplicably going out, and their ladders are being shaken. Several men have reported to hearing the voice of a coworker who died in an accident the previous year.')

#skinwalker
swalker_sighting_1 = create(:sighting, cryptid: skinwalker, description: 'A man walking with his dogs on his farm in the evening started hearing voices talking in a language he could not understand. Suddenly there was a strong wind and he came up on a creature that appeared to be a wolf, but three times larger than the size of a normal wolf, and with glowing orange eyes. It began to growl, so he shot his rifle at it, but the bullet hit the creature and fell into the snow like a pebble. A strong gust of wind blew again, and the creature quickly turned and disappeared into the darkness. When the man went over to where it had been standing, there were no prints or tracks in the snow, the only mark was the spot where his bullet fell in the snow.')
swalker_sighting_2 = create(:sighting, cryptid: skinwalker, description: 'A woman driving along a highway at night was overcome with a sudden overwhelming feeling of dread. She felt an urging in her mind that she should turn around and go back the other direction on the road. She shook off the feeling and continued, thinking it was only anxiety being on the road alone. She then saw in the corner of her headlight on the shoulder, a strange animal running alongside her truck, keeping pace at 70mph. It turned and looked at her and she slammed on her breaks, startled. She stated it had a face that resembled a human, but different. When she shined her light where the creature had been, there was nothing there. She decided to turn around and go back.')
swalker_sighting_3 = create(:sighting, cryptid: skinwalker, description: 'A father and son on a hunting ranch out before sunrise both reported the sudden onset of a feeling of being watched. They shined their flashlights out of the hunting blind and saw something dart away in the periphery. Figuring it was probably nothing of concern, they both shrugged it off. A short time later, the son needed to use the bathroom and exited the blind with the father following behind. When they turned around, they reported that standing in front of them was a mangled-looking coyote-human hybrid creature standing on its hind legs looking at them. They both panicked and tried to scramble back into the blind, and the creature darted into the trees.')

#alien
alien_sighting_1 = create(:sighting, cryptid: alien, description: 'A man was awoken during the night to an extremely bright light shining in through his bedroom window. He decided to get out of bed to see where the light was coming from outside. He was startled to find a figure standing in his room between himself and his window. He was unable to move or scream, and the figure approached him. It reached out and began tapping on his forehead with what felt like something sharp or pointed. He blacked out and woke up on the floor the next morning. He was found to have a small unexplained red spot of broken skin in the center of his forehead.')
alien_sighting_2 = create(:sighting, cryptid: alien, description: 'A family of six was sitting around a campfire in their back yard late at night. They reported that suddenly a blinding blue light appeared above them. The next thing they remember, they were all standing inside their house facing the back door.')
alien_sighting_3 = create(:sighting, cryptid: alien, description: 'A woman with a sick elderly dog was sitting on the floor comforting her pet. She heard a strange sound and a small humanoid creature with large eyes appeared beside her. The creature reached out and rested its hand on the dog. The womans husband entered the room, and jumped back, not knowing what the creature was. It was startled and darted outside through the dog door.')

#nessie
nessie_sighting_1 = create(:sighting, cryptid: nessie, description: 'A group of friends vacationing on a boat reported seeing a huge creature with a long neck arch out of the water.')
nessie_sighting_2 = create(:sighting, cryptid: nessie, description: 'Police received multiple calls of a strange extremely large creature swimming at high speed and emitting a low freqency noise.')
nessie_sighting_3 = create(:sighting, cryptid: nessie, description: 'A group of college students playing with a drone recorded a massive unknown creature swimming in the loch.')
