# react-router-dom This file should contain all the record creation needed to seed the database with its default values.
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

# cryptids
bigfoot = create(:cryptid, name: 'Bigfoot', range: 'Rocky Mountains, Appalachian Trial, Coastal Plain', danger_level: '7', image: 'https://bit.ly/3JKsNDs', description: 'Bigfoot, also called Sasquatch (from Salish se’sxac: “wild men”) is a large, hairy, humanlike creature described as ranging from 6 to 15 feet tall. It is observed standing on two feet, often giving off a foul smell, and moving silently or emitting a high-pitched cry. Footprints have measured up to 24 inches in width.')
mothman = create(:cryptid, name: 'Mothman', range: 'West Virginia, Chicago', danger_level: '9', image: 'https://bit.ly/3INwjLP', description: 'Mothman is a black 10-foot creature with wings and red eyes.')
nightcrawler = create(:cryptid, name: 'Nightcrawler', range: 'California', danger_level: '6', image: 'https://bit.ly/37Yiei1', description: 'Nightcrawlers appear to be relatively short creatures (approx. 1.5 meters) with most of their height being made up of their legs as they possess an extremely small upper body. It is an extremely thin, white humanoid with no discernible arms.')
chupacabra = create(:cryptid, name: 'Chupacabra', range: 'Southwestern US, Puerto Rico, Maine', danger_level: '8', image: 'https://bit.ly/3wGyYov',
                              description: 'The chupacabra, literally \'goat-sucker\' in Spanish, is described as dog-like or reptilian and alien-like. A heavy creature, approximately the size of a small bear, with a row of spines reaching from the neck to the base of the tail, its name comes from the creature\'s reported vampirism-- it is said to attack and drink the blood of livestock, particularly goats.')
tommyknocker = create(:cryptid, name: 'Tommyknocker', range: 'underground Pennsylvania, Colorado, Nevada, California', danger_level: '8', image: 'https://bit.ly/3qDsItE', description: "A subterranean gnome-like creature described as a littler person approximately 2ft tall, with a disproportionately large head, long arms, wrinkled skin, and white whiskers. It sometimes wears a tiny version of standard miner's garb and commits random mischief, such as stealing miners' unattencded tools and food.")
skinwalker = create(:cryptid, name: 'Skinwalker', range: 'Western United States, Appalachia', danger_level: '10', image: 'https://bit.ly/3uzpUPx', description: 'A skinwalker is a type of harmful witch who has the ability to turn into, possess, or disguise themselves as an animal for the purpose of committing harm. Skin-walkers are not well understood outside of Navajo culture, mostly due to reluctance to discuss the subject with outsiders.')
alien = create(:cryptid, name: 'Alien', range: 'unknown', danger_level: '5', image: 'https://bit.ly/3tHKvBO', description: 'Also called extraterrestrial life, aliens are intelligent beings that do not originate from earth.')
nessie = create(:cryptid, name: 'Loch Ness Monster', range: 'Scottish Highlands', danger_level: '4', image: 'https://bit.ly/3Nons6V', description: 'A creature affectionately known as Nessie, it is a large, long-necked creature that inhabits Loch Ness in the Scottish Highlands.')
jackalope = create(:cryptid, name: 'Jackalope', range: 'Western United States', danger_level: '7', image: 'https://bit.ly/3ITqGvI', description: 'A jackrabbit and antelope hybrid. Though very shy unless approached, this creature is known to be aggressive. Also called the \'warrior rabbit\'. However this beast can be tamed with the offering of fine whiskey.')

# sightings

# bigfoot
bfoot_sighting_1 = create(:sighting, cryptid: bigfoot, location: 'Buchers Mills, PA', description: 'Spotted Bigfoot along the highway near millstone. Described the creature as having looked back at them on the shoulder of the road — an encounter that ultimately lasted seconds', image: 'https://www.science.org/do/10.1126/article.22891/full/sn-bigfooth.jpg', trail_links: ['https://www.alltrails.com/explore/trail/us/pennsylvania/chapman-nature-trail?ref=result-card', 'https://www.alltrails.com/explore/trail/us/pennsylvania/adams-run-trail'])
bfoot_sighting_2 = create(:sighting, cryptid: bigfoot, location: 'Leadville, CO', description: 'A youth group was camping in the Marble Mountain Wilderness when leader Jim Mills noticed a strange-looking creature skulking along a ridge nearby.', image: 'https://assets3.thrillist.com/v1/image/1393089/1584x1056/crop;webp=auto;jpeg_quality=60;progressive.jpg', trail_links: ['https://www.alltrails.com/explore/trail/us/colorado/boulders-and-giddy-up-loop', 'https://www.alltrails.com/explore/trail/us/colorado/mineral-belt-trail'])
bfoot_sighting_3 = create(:sighting, cryptid: bigfoot, location: 'Roosevelt, Utah', description: 'A hiker was walking when he spotted a large creature to the left in the woods. As he approached, the creature stood up on two legs and started throwing rocks at him.', image: 'https://bit.ly/36LEZ8H', trail_links: ['https://www.alltrails.com/explore/trail/us/utah/hidden-lake-via-duck-lake-trail-210', 'https://www.alltrails.com/explore/trail/us/utah/crystal-lake-loop--2'])

# mothman
mman_sighting_1 = create(:sighting, cryptid: mothman, location: 'Point Pleasant, West Virgina', description: 'Five gravediggers claimed to see a human-like figure soaring just above them in the autumn trees.', image: 'https://www.snopes.com/tachyon/2016/11/a29.jpg', trail_links: ['https://www.alltrails.com/explore/trail/us/west-virginia/point-plesant-walkin-trail'])
mman_sighting_2 = create(:sighting, cryptid: mothman, location: 'Point Pleasant, West Virgina', description: 'A man was driving along State Route 2 saw something jump from tree to tree. He pulled off the road and snapped some pictures. In the pictures, the creature appears to have wings with pointed tips and long legs, bent at an awkward angle.', trail_links: ['https://www.alltrails.com/explore/trail/us/west-virginia/point-plesant-walkin-trail'], image: 'https://bit.ly/3NrXW0R')
mman_sighting_3 = create(:sighting, cryptid: mothman, location: 'Chicago, IL', description: 'A man saw something that resembled a humanoid pterodactyl flying awkwardly.', image: 'https://bit.ly/3wOYmbK', trail_links: ['https://www.alltrails.com/explore/trail/us/illinois/chicago-riverwalk', 'https://www.alltrails.com/explore/trail/us/illinois/millennium-park-trail'])

# nightcrawler
ncrawler_sighting_1 = create(:sighting, cryptid: nightcrawler, location: 'Old Bretz Mill, California', description: 'A man put up trail cameras in his yard to see what was causing his dogs to bark during the night. The cameras captured images of strange pale, small, armless creatures walking.', image: 'https://bit.ly/3wNMzdv', trail_links: ['https://www.alltrails.com/explore/trail/us/california/granite-ridge-loop', 'https://www.alltrails.com/explore/trail/us/california/shaver-lake-trail'])
ncrawler_sighting_2 = create(:sighting, cryptid: nightcrawler, location: 'Hesperia, CA', description: 'A 17 year old motorist saw a strange thing on the side of the road when driving at night. It was thin and pale with long legs, and moved oddly as if disjointed.', image: 'https://bit.ly/36BQdMZ', trail_links: ['https://www.alltrails.com/explore/trail/us/california/coxey-rd', 'https://www.alltrails.com/explore/trail/us/california/mount-san-antonio-mount-baldy-notch-trail'])
ncrawler_sighting_3 = create(:sighting, cryptid: nightcrawler, location: 'Fullerton, CA', description: 'A video captured on home surveillance system shows a white creature with long legs and no upper body walking slowly across the yard.', image: 'https://bit.ly/36WIuJ0', trail_links: ['https://www.alltrails.com/explore/trail/us/california/mount-san-antonio-mount-baldy-notch-trail', 'https://www.alltrails.com/explore/trail/us/california/juanita-cooke-trail-to-hitscher-park-trail'])

# chupacabra
chcabra_sighting_1 = create(:sighting, cryptid: chupacabra, location: 'Arecibo, Puerto Rico', description: 'A woman spotted a creature standing upright, resembling a reptilian kangaroo with huge red eyes. It ran into the brush when she screamed. Later, the livestock on the property were found to be dead. They were not eaten or mutilated, but were drained of blood.', image: 'https://bit.ly/3uypFEi', trail_links: ['https://www.alltrails.com/explore/trail/puerto-rico/northern-region/charco-prieto-water-falls?u=i'])
chcabra_sighting_2 = create(:sighting, cryptid: chupacabra, location: 'Bangor, Maine', description: 'Two seven year old boys described seeing a dog-like creature with a row of spines down its back standing on its hind legs near the barn. Six of the family goats were found drained of blood approximately 40 feet away from where the creature had been lurking.', image: 'https://bit.ly/38bH3Hv', trail_links: ['https://www.alltrails.com/explore/trail/us/maine/brewer-riverwalk'])
chcabra_sighting_3 = create(:sighting, cryptid: chupacabra, location: 'Utuado, Puerto Rico', description: 'A man saw a large black-haired creature with red eyes and clawed hands come out of the trees and attack the family dog. He ran to get his gun, but when he returned, the creature was gone and the family dog was left dead with puncture wounds to neck.', image: 'https://bit.ly/3iKMijh', trail_links: ['https://www.alltrails.com/explore/trail/puerto-rico/central-region/canon-blanco-sendero-el-sofa?u=i', 'https://www.alltrails.com/explore/trail/puerto-rico/central-region/charco-los-morones?u=i'])

# tommyknocker
tknocker_sighting_1 = create(:sighting, cryptid: tommyknocker, location: 'Telluride, CO', description: 'A miner heard the voice of a young boy calling for help while deep inside the mines. Coworkers warned him not to follow the voice, but he reportedly felt compelled to make sure the boy was safe. When he went into a tunnel to search for the child, coworkers reported that they heard knocking and whispering sounds and shouted for him to turn back. He responded that he thought he saw a small figure perched high up in the cave. The tunnel then collapsed, killing him.', image: 'https://bit.ly/3iSXH0M', trail_links: ['https://bit.ly/3tOq6Lq', 'https://bit.ly/3qLvmO7', 'https://bit.ly/3iKZLaP'])
tknocker_sighting_2 = create(:sighting, cryptid: tommyknocker, location: 'Coleville, CA', description: 'Four men exploring a cave area started hearing a voice whispering their names, and a sequence of knocking from deeper in the cave. Two of the men felt it was a warning and decided to exit the cave while the other two stayed behind, laughing and jokingly calling out to the voices. The two men that remained were crushed in a sudden cave-in ten minutes later.', image: 'https://bit.ly/3IWfY7Q', trail_links: ['https://bit.ly/3tQGnjh', 'https://bit.ly/3iKf9Ei'])
tknocker_sighting_3 = create(:sighting, cryptid: tommyknocker, location: 'Leadville, CO', description: 'A group of men working in a local mine reported to their supervisor that when working in a certain area, they have been getting pelted with rocks, their tools are being taken, their lights keep inexplicably going out, and their ladders are being shaken. Several men have reported to hearing the voice of a coworker who died in an accident the previous year.', image: 'https://bit.ly/38j57bu', trail_links: ['https://bit.ly/3DpixhK', 'https://bit.ly/3uHP12N', 'https://bit.ly/35l7edE'])

# skinwalker
swalker_sighting_1 = create(:sighting, cryptid: skinwalker, location: 'Chinle, AZ', description: 'A man walking with his dogs on his farm in the evening started hearing voices talking in a language he could not understand. Suddenly there was a strong wind and he came up on a creature that appeared to be a wolf, but three times larger than the size of a normal wolf,
  and with glowing orange eyes. It began to growl, so he shot his rifle at it, but the bullet hit the creature and fell into the snow like a pebble. A strong gust of wind blew again, and the creature quickly turned and disappeared into the darkness. When the man went over to where it had been standing, there were no prints or tracks in the snow, the only mark was
  the spot where his bullet fell in the snow.', image: 'https://ihr.fm/3tXZ0Ss', trail_links: ['https://bit.ly/3JVZXA4', 'https://bit.ly/3LtN8gT'])
swalker_sighting_2 = create(:sighting, cryptid: skinwalker, location: 'Kirtland, NM', description: 'A woman driving along a highway at night was overcome with a sudden overwhelming feeling of dread. She felt an urging in her mind that she should turn around and go back the other direction on the road. She shook off the feeling and continued, thinking it was only
  anxiety being on the road alone. She then saw in the corner of her headlight on the shoulder, a strange animal running alongside her truck, keeping pace at 70mph. It turned and looked at her and she slammed on her breaks, startled. She stated it had a face that resembled a human, but different. When she shined her light where the creature had been, there was nothing
  there. She decided to turn around and go back.', image: 'https://bit.ly/3DAtJYL', trail_links: ['https://bit.ly/3wRQSVc', 'https://bit.ly/36F27Wn', 'https://bit.ly/3JU7NKr'])
swalker_sighting_3 = create(:sighting, cryptid: skinwalker, location: 'Ballard, UT', description: 'A father and son on a hunting ranch out before sunrise both reported the sudden onset of a feeling of being watched. They shined their flashlights out of the hunting blind and saw something dart away in the periphery. Figuring it was probably nothing of concern, they both
  shrugged it off. A short time later, the son needed to use the bathroom and exited the blind with the father following behind. When they turned around, they reported that standing in front of them was a mangled-looking coyote-human hybrid creature standing on its hind legs looking at them. They both panicked and tried to scramble back into the blind, and the creature
  darted into the trees.', image: 'https://bit.ly/3NAnhFL', trail_links: ['https://bit.ly/36WJFIy', 'https://bit.ly/36UvTWT', 'https://bit.ly/36ZIPus'])

# alien
alien_sighting_1 = create(:sighting, cryptid: alien, location: 'Dexter, NM', description: 'A man was awoken during the night to an extremely bright light shining in through his bedroom window. He decided to get out of bed to see where the light was coming from outside. He was startled to find a figure standing in his room between himself and his window. He was unable to
  move or scream, and the figure approached him. It reached out and began tapping on his forehead with what felt like something sharp or pointed. He blacked out and woke up on the floor the next morning. He was found to have a small unexplained red spot of broken skin in the center of his forehead.', image: 'https://bit.ly/3uHfc9z', trail_links: ['https://bit.ly/3uFs4NC', 'https://bit.ly/3DuEETW', 'https://bit.ly/36WEiZU'])
alien_sighting_2 = create(:sighting, cryptid: alien, location: 'Lubbock, TX', description: 'A family of six was sitting around a campfire in their back yard late at night. They reported that suddenly a blinding blue light appeared above them. The next thing they remember, they were all standing inside their house facing the back door.', image: 'https://bit.ly/3LBKfux', trail_links: ['https://bit.ly/3Dnh2jN'])
alien_sighting_3 = create(:sighting, cryptid: alien, location: 'Paradise Inn, WA', description: 'A woman with a sick elderly dog was sitting on the floor comforting her pet. She heard a strange sound and a small humanoid creature with large eyes appeared beside her. The creature reached out and rested its hand on the dog. The womans husband entered the room, and jumped back,
  not knowing what the creature was. It was startled and darted outside through the dog door.', image: 'https://bit.ly/3NFlC1R', trail_links: ['https://bit.ly/3IMgXHz', 'https://bit.ly/3Lt4CKm', 'https://bit.ly/36CdvSU'])

# nessie
nessie_sighting_1 = create(:sighting, cryptid: nessie, location: 'Scotland', description: 'A group of friends vacationing on a boat reported seeing a huge creature with a long neck arch out of the water.', image: 'https://bit.ly/3uK7WKb', trail_links: ['https://bit.ly/3uAeStq', 'https://bit.ly/36wsYnH'])
nessie_sighting_2 = create(:sighting, cryptid: nessie, location: 'Scotland', description: 'Police received multiple calls of a strange extremely large creature swimming at high speed and emitting a low freqency noise.', image: 'https://bit.ly/3qRksGL', trail_links: ['https://bit.ly/3JR7FeV', 'https://bit.ly/3tN9ST0', 'https://bit.ly/3DmtS1S'])
nessie_sighting_3 = create(:sighting, cryptid: nessie, location: 'Scotland', description: 'A group of college students playing with a drone recorded a massive unknown creature swimming in the loch.', image: 'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1240w,f_auto,q_auto:best/msnbc/Components/Photos/071001/071001_nessie_hmed_11a.jpg', trail_links: ['https://bit.ly/3iOkGd2'])

# jackalope
jackalope_sighting_1 = create(:sighting, cryptid: jackalope, location: 'Pine Bluffs, WY', description: 'A child hiking with their parents spotted a strange looking rabbit in the distance', image: 'https://bit.ly/35rBR11', trail_links: ['https://bit.ly/3iJi00o', 'https://bit.ly/3IJTmrb', 'https://bit.ly/3Lsloca'])
jackalope_sighting_2 = create(:sighting, cryptid: jackalope, location: 'Weskan, KS', description: 'Two sheep ranchers saw something that looked like a tinhy antelope approach their fire at dusk.', image: 'https://sandysteinman.files.wordpress.com/2021/04/166485552_3744836988903413_5104277642228470578_n.png', trail_links: ['https://bit.ly/3iPkA57'])
jackalope_sighting_3 = create(:sighting, cryptid: jackalope, location: 'Saratoga, WY', description: 'A group of students on an astronomy field trip saw a pair of glowing eyes in the darkness. When they pointed a flashlight at it they could see a small creature dart into tall grass.', image: 'https://1.bp.blogspot.com/-88FOArDPjkU/T0pyvXNQ74I/AAAAAAAAAoc/TlaZl950Ojo/s320/Jackalope+2.jpg', trail_links: ['https://bit.ly/3iNJTnX', 'https://bit.ly/38bVMCi', 'https://bit.ly/3IP0B14'])
