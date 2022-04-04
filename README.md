![with-bg](https://user-images.githubusercontent.com/69017022/161345695-e2ec9ddb-34a0-493a-9232-80b70a8b3dab.png)


# OK, Cryptid
#####  (this repo is used with the [OK, Cryptid](https://github.com/OK-Cryptid/ok_cryptid_be))

<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#set-up">Set Up</a></li>
        <li><a href="#use-of-this-repository">Use of this Repository</a>
          <ul>
            <li>Frontend Server</li>
            <li>Backend Server</li>
          </ul>
        </li>
    </li>
    </ul>
    <li>
      <a href="#project-description">About This Project</a>
      <ul>
        <li><a href="#learning-goals-for-project">Learning Goals for Project</a></li>
        <li><a href="#versions">Versions</a></li>
        <li><a href="#important-gems">Important Gems</a></li>
        <li><a href="#database-schema">Database Schema</a></li>
      </ul>
    </li>
    <li>
      <a href="#graphql">GraphQL Queries</a>
      <details>
        <summary>Available Queries</summary>
        <ul>
          <li><a href="#cryptid-queries">Cryptid Queries</a></li>
          <li><a href="#sighting-queries">Sighting Queries</a></li>
        </ul>
      </details>
    </li>
    <li><a href="#collaborators">Collaborators</a></li>
  </ol>
</details>

----------

## Getting Started

### Set Up
On your local system, open a terminal session to run the following commands:
1. Clone this repository `$ git clone git@github.com:OK-Cryptid/ok_cryptid_be.git`
2. Navigate to the newly cloned directory `$ cd ok_cryptid_be`
3. If bundler is not installed run `$ gem install bundler`
4. If or after bundler is installed run `$ bundle install` to install the required Gems
5. If errors occur, check for proper installation and versions of `bundler`, `ruby`, and `rails`
6. Set up the database locally with `$ rails db:{:drop,:create,:migrate,:seed}`
7. Open your text editor and check to see that `schema.rb` exists
8. You may also run the RSpec test suite locally with the command `$ bundle exec rspec` to ensure everything is functioning as expected.

### Use of this Repository
In order to run this application you need both this Backend Repository and the associated [Frontend Repository](https://github.com/OK-Cryptid/ok-cryptid-fe)

**Backend Server**

To explore the Backend queries navigate to https://cryptic-garden-95478.herokuapp.com/graphiql and check it out!

**Frontend Server**
 
For a full explanation to set-up the frontend server, please see the docs [Here](https://github.com/OK-Cryptid/ok-cryptid-fe#readme)

<!-- On you command line:
1. Navigate to the local directory where the frontend repo is housed
2. Start the Frontend server with `$ rails s` and navigate to http://localhost:3000/ or http://ok-cryptid.herokuapp.com in your web browser. Here you are able to interact with the application. -->

<!-- 1.  Navigate to http://ok-cryptid.herokuapp.com and take a look around! -->
1. Navigate to http://ok-cryptid.herokuapp.com and take a look around!

**Backend Server**
 
<!-- On your command line:
1. Navigate to the local directory where the backend repo is housed
2. Run `$ rails s` to run the server locally
3. Open a web browser and navigate to http://localhost:3000/graphiql
4. Here you are able to explore the queries exposed by the API! -->

----------

## Project Description

This is a back-end project designed to explore the fundamentals of exposing queries through GraphQL in order to develop an app that integrates microservices. OK, Cryptid opens a world of mystery with the thrill of being able to find trails near cryptid sightings. Users can read details of a cryptid as well as review recent sightings. Data is manually added to the seeds file and persisted to the BE database. 

## Learning Goals for Project:

Explicit
- Utilize GraphQL
- Collaborate with a FE team
- Implement CircleCI

Implicit
- Project planning
- Reading/Writing documentation
- Time Management/Prioritizing Work
- Break down large project goals into manageable steps
- Implement agile workflows
- GitHub workflow and project management tools

----------

### Versions

- Ruby 2.7.2
- Rails 5.2.6

----------

### Important Gems

- Testing: [rspec-rails](https://github.com/rspec/rspec-rails), [simplecov](https://github.com/simplecov-ruby/simplecov), [factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails), [faker](https://github.com/vajradog/faker-rails)
- GraphQL: graphql and graphiql-rails (no specific sites, independent research needed) 

----------

## Database Schema

![Screen Shot 2022-04-01 at 3 50 49 PM](https://user-images.githubusercontent.com/69017022/161346057-d06ed82c-0459-4b84-ae1a-30bf974e48e4.png)

----------

## Queries
Available queries

### Cryptid queries
<details>
    <summary> Single Cryptid by ID: </summary>

```
Query
{
 cryptidById(id: "6") {
  name
  dangerLevel
  description
  image
  range
  sightings{
    title
   }
 }
}
  
response
  
{
  "data": {
    "cryptidById": {
      "name": "Bigfoot",
      "dangerLevel": "6",
      "description": "Bigfoot, also called Sasquatch (from Salish se’sxac: “wild men”) is a large, hairy, humanlike creature described as ranging from 6 to 15 feet tall. It is observed standing on two feet, often giving off a foul smell, and moving silently or emitting a high-pitched cry. Footprints have measured up to 24 inches in width.",
      "image": "https://bit.ly/3JKsNDs",
      "range": "Rocky Mountains, Appalachian Trial, Coastal Plain",
      "sightings": [
        {
          "title": "Black Mesa Research Facility"
        },
        {
          "title": "Sector G Hydro Electric"
        },
        {
          "title": "Sector E Biodome Complex"
        }
      ]
    }
  }
}
```

</details>

<details>
    <summary> Cryptid by Name: (returns array) </summary>

```
Query
{
 cryptidByName(Name: "bigfoot") {
  name
  dangerLevel
  description
  image
  range
  sightings{
    title
   }
 }
}
  
response
  
{
  "data": {
    "cryptidByName": [
      {
        "name": "Bigfoot",
        "dangerLevel": "6",
        "description": "Bigfoot, also called Sasquatch (from Salish se’sxac: “wild men”) is a large, hairy, humanlike creature described as ranging from 6 to 15 feet tall. It is observed standing on two feet, often giving off a foul smell, and moving silently or emitting a high-pitched cry. Footprints have measured up to 24 inches in width.",
        "image": "https://bit.ly/3JKsNDs",
        "range": "Rocky Mountains, Appalachian Trial, Coastal Plain",
        "sightings": [
          {
            "title": "Black Mesa Research Facility"
          },
          {
            "title": "Sector G Hydro Electric"
          },
          {
            "title": "Sector E Biodome Complex"
          }
        ]
      }
    ]
  }
}
```

</details>

<details>
    <summary>Cryptid by Range: (returns array) </summary>

```
Query
{
 cryptidByRange(range: "colorado") {
  name
  dangerLevel
  description
  image
  range
  sightings{
    title
   }
 }
}
  
response
  
{
  "data": {
    "cryptidByRange": [
      {
        "name": "Tommyknocker",
        "dangerLevel": "1",
        "description": "A subterranean gnome-like creature described as a littler person approximately 2ft tall, with a disproportionately large head, long arms, wrinkled skin, and white whiskers. It sometimes wears a tiny version of standard miner's garb and commits random mischief, such as stealing miners' unattencded tools and food.",
        "image": "https://bit.ly/3qDsItE",
        "range": "underground Pennsylvania, Colorado, Nevada, California",
        "sightings": [
          {
            "title": "Nova Prospekt"
          },
          {
            "title": "Sector E Biodome Complex"
          },
          {
            "title": "Section A-17 Prototype Labs"
          }
        ]
      }
    ]
  }
}
```

</details>

<details>
    <summary> All cryptids: </summary>

```
Query
{
 getCryptids {
  name
  dangerLevel
  description
  image
  range
  sightings{
    title
   }
 }
}
  
response
  
{
  "data": {
    "getCryptids": [
      {
        "name": "Bigfoot",
        "dangerLevel": "6",
        "description": "Bigfoot, also called Sasquatch (from Salish se’sxac: “wild men”) is a large, hairy, humanlike creature described as ranging from 6 to 15 feet tall. It is observed standing on two feet, often giving off a foul smell, and moving silently or emitting a high-pitched cry. Footprints have measured up to 24 inches in width.",
        "image": "https://bit.ly/3JKsNDs",
        "range": "Rocky Mountains, Appalachian Trial, Coastal Plain",
        "sightings": [
          {
            "title": "Black Mesa Research Facility"
          },
          {
            "title": "Sector G Hydro Electric"
          },
          {
            "title": "Sector E Biodome Complex"
          }
        ]
      },
      {
        "name": "Mothman",
        "dangerLevel": "4",
        "description": "Mothman is a black 10-foot creature with wings and red eyes.",
        "image": "https://bit.ly/3INwjLP",
        "range": "West Virginia, Chicago",
        "sightings": [
          {
            "title": "Sector B Coolant Reserve"
          },
          {
            "title": "Black Mesa Research Facility"
          },
          {
            "title": "Xen"
          }
        ]
      },
      {
        "name": "Nightcrawler",
        "dangerLevel": "5",
        "description": "Nightcrawlers appear to be relatively short creatures (approx. 1.5 meters) with most of their height being made up of their legs as they possess an extremely small upper body. It is an extremely thin, white humanoid with no discernible arms.",
        "image": "https://bit.ly/37Yiei1",
        "range": "California",
        "sightings": [
          {
            "title": "Sector G Hydro Electric"
          },
          {
            "title": "Black Mesa Research Facility"
          },
          {
            "title": "Ravenholm"
          }
        ]
      },
      {
        "name": "Chupacabra",
        "dangerLevel": "6",
        "description": "The chupacabra, literally 'goat-sucker' in Spanish, is described as dog-like or reptilian and alien-like. A heavy creature, approximately the size of a small bear, with a row of spines reaching from the neck to the base of the tail, its name comes from the creature's reported vampirism-- it is said to attack and drink the blood of livestock, particularly goats.",
        "image": "https://bit.ly/3wGyYov",
        "range": "Southwestern US, Puerto Rico, Maine",
        "sightings": [
          {
            "title": "Sector D Administration"
          },
          {
            "title": "Sector C Test Labs"
          },
          {
            "title": "Citadel"
          }
        ]
      },
      {
        "name": "Tommyknocker",
        "dangerLevel": "1",
        "description": "A subterranean gnome-like creature described as a littler person approximately 2ft tall, with a disproportionately large head, long arms, wrinkled skin, and white whiskers. It sometimes wears a tiny version of standard miner's garb and commits random mischief, such as stealing miners' unattencded tools and food.",
        "image": "https://bit.ly/3qDsItE",
        "range": "underground Pennsylvania, Colorado, Nevada, California",
        "sightings": [
          {
            "title": "Nova Prospekt"
          },
          {
            "title": "Sector E Biodome Complex"
          },
          {
            "title": "Section A-17 Prototype Labs"
          }
        ]
      },
      {
        "name": "Skin-walker",
        "dangerLevel": "5",
        "description": "A skin-walker is a type of harmful witch who has the ability to turn into, possess, or disguise themselves as an animal for the purpose of committing harm. Skin-walkers are not well understood outside of Navajo culture, mostly due to reluctance to discuss the subject with outsiders.",
        "image": "https://bit.ly/3uzpUPx",
        "range": "unknown",
        "sightings": [
          {
            "title": "Black Mesa East"
          },
          {
            "title": "Sector C Test Labs"
          },
          {
            "title": "Sector C Test Labs"
          }
        ]
      },
      {
        "name": "Alien",
        "dangerLevel": "2",
        "description": "Also called extraterrestrial life, aliens are intelligent beings that do not originate from earth.",
        "image": "https://bit.ly/3tHKvBO",
        "range": "unknown",
        "sightings": [
          {
            "title": "Black Mesa East"
          },
          {
            "title": "White Forest"
          },
          {
            "title": "Black Mesa East"
          }
        ]
      },
      {
        "name": "Loch Ness Monster",
        "dangerLevel": "7",
        "description": "A creature affectionately known as Nessie, it is a large, long-necked creature that inhabits Loch Ness in the Scottish Highlands.",
        "image": "https://bit.ly/3Nons6V",
        "range": "Scottish Highlands",
        "sightings": [
          {
            "title": "Sector G Hydro Electric"
          },
          {
            "title": "Sector G Hydro Electric"
          },
          {
            "title": "Xen"
          }
        ]
      }
    ]
  }
}
```

</details>

### Sighting Queries

<details>
    <summary> Single Sighting by ID: </summary>

```
Query
  
{
  sightingById(id: "4") {
    description
    image
    location
    title
    trailLinks
  }
}
  
response
  
{
  "data": {
    "sightingById": {
      "description": "A youth group was camping in the Marble Mountain Wilderness when leader Jim Mills noticed a strange-looking creature skulking along a ridge nearby.",
      "image": "https://loremflickr.com/300/300/cryptid",
      "location": "Idaho",
      "title": "Sector G Hydro Electric",
      "trailLinks": [
        "mclaughlin.com",
        "barrows-hane.biz",
        "gulgowski.name"
      ]
    }
  }
}
```

</details>

<details>
    <summary> All Sightings: </summary>

```
Query
  
{
  sightings {
    description
    image
    location
    title
    trailLinks
  }
}
  
response
  
{
  "data": {
    "sightings": [
      {
        "description": "Spotted Bigfoot along the highway near millstone. Described the creature as having looked back at them on the shoulder of the road — an encounter that ultimately lasted seconds",
        "image": "sighting image 1",
        "location": "Millstone, PE",
        "title": "Black Mesa Research Facility",
        "trailLinks": [
          "swift.biz",
          "rolfson-frami.net",
          "quigley-nienow.name"
        ]
      },
      {
        "description": "A youth group was camping in the Marble Mountain Wilderness when leader Jim Mills noticed a strange-looking creature skulking along a ridge nearby.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Idaho",
        "title": "Sector G Hydro Electric",
        "trailLinks": [
          "mclaughlin.com",
          "barrows-hane.biz",
          "gulgowski.name"
        ]
      },
      {
        "description": "A hiker was walking when he spotted a large creature to the left in the woods. As he approached, the creature stood up on two legs and started throwing rocks at him.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Iowa",
        "title": "Sector E Biodome Complex",
        "trailLinks": [
          "block.info",
          "farrell-veum.name",
          "feest.name"
        ]
      },
      {
        "description": "Five gravediggers claimed to see a human-like figure soaring just above them in the autumn trees.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Ohio",
        "title": "Sector B Coolant Reserve",
        "trailLinks": [
          "streich-greenholt.biz",
          "kulas.net",
          "hessel.biz"
        ]
      },
      {
        "description": "A man was driving along State Route 2 saw something jump from tree to tree. He pulled off the road and snapped some pictures. In the pictures, the creature appears to have wings with pointed tips and long legs, bent at an awkward angle.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Maryland",
        "title": "Black Mesa Research Facility",
        "trailLinks": [
          "effertz.biz",
          "zemlak.co",
          "block.biz"
        ]
      },
      {
        "description": "A man saw something that resembled a humanoid pterodactyl flying awkwardly.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Iowa",
        "title": "Xen",
        "trailLinks": [
          "howell-fadel.biz",
          "marquardt-flatley.biz",
          "kilback.com"
        ]
      },
      {
        "description": "A man put up trail cameras in his yard to see what was causing his dogs to bark during the night. The cameras captured images of strange pale, small, armless creatures walking.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "California",
        "title": "Sector G Hydro Electric",
        "trailLinks": [
          "mayer.com",
          "okuneva.info",
          "schroeder.name"
        ]
      },
      {
        "description": "A 17 year old motorist saw a strange thing on the side of the road when driving at night. It was thin and pale with long legs, and moved oddly as if disjointed.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Delaware",
        "title": "Black Mesa Research Facility",
        "trailLinks": [
          "hermiston.io",
          "veum.info",
          "bernhard-moore.io"
        ]
      },
      {
        "description": "A video captured on home surveillance system shows a white creature with long legs and no upper body walking slowly across the yard.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Kansas",
        "title": "Ravenholm",
        "trailLinks": [
          "klocko.com",
          "senger.biz",
          "fisher-marquardt.info"
        ]
      },
      {
        "description": "A woman spotted a creature standing upright, resembling a reptilian kangaroo with huge red eyes. It ran into the brush when she screamed. Later, the livestock on the property were found to be dead. They were not eaten or mutilated, but were drained of blood.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Oregon",
        "title": "Sector D Administration",
        "trailLinks": [
          "dicki-hane.name",
          "towne.org",
          "armstrong-schuppe.io"
        ]
      },
      {
        "description": "Two seven year old boys described seeing a dog-like creature with a row of spines down its back standing on its hind legs near the barn. Six of the family goats were found drained of blood approximately 40 feet away from where the creature had been lurking.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "North Carolina",
        "title": "Sector C Test Labs",
        "trailLinks": [
          "quigley.info",
          "bergstrom.name",
          "lemke.net"
        ]
      },
      {
        "description": "A man saw a large black-haired creature with red eyes and clawed hands come out of the trees and attack the family dog. He ran to get his gun, but when he returned, the creature was gone and the family dog was left dead with puncture wounds to neck.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Georgia",
        "title": "Citadel",
        "trailLinks": [
          "fisher.info",
          "lebsack.com",
          "nikolaus.io"
        ]
      },
      {
        "description": "A miner heard the voice of a young boy calling for help while deep inside the mines. Coworkers warned him not to follow the voice, but he reportedly felt compelled to make sure the boy was safe. When he went into a tunnel to search for the child, coworkers reported that they heard knocking and whispering sounds and shouted for him to turn back. He responded that he thought he saw a small figure perched high up in the cave. The tunnel then collapsed, killing him.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "West Virginia",
        "title": "Nova Prospekt",
        "trailLinks": [
          "pfannerstill.net",
          "pfannerstill-towne.org",
          "moore.net"
        ]
      },
      {
        "description": "Four men exploring a cave area started hearing a voice whispering their names, and a sequence of knocking from deeper in the cave. Two of the men felt it was a warning and decided to exit the cave while the other two stayed behind, laughing and jokingly calling out to the voices. The two men that remained were crushed in a sudden cave-in ten minutes later.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Wisconsin",
        "title": "Sector E Biodome Complex",
        "trailLinks": [
          "schmidt.org",
          "skiles.co",
          "kilback-lubowitz.net"
        ]
      },
      {
        "description": "A group of men working in a local mine reported to their supervisor that when working in a certain area, they have been getting pelted with rocks, their tools are being taken, their lights keep inexplicably going out, and their ladders are being shaken. Several men have reported to hearing the voice of a coworker who died in an accident the previous year.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Florida",
        "title": "Section A-17 Prototype Labs",
        "trailLinks": [
          "lesch.io",
          "boyer-haley.co",
          "considine.io"
        ]
      },
      {
        "description": "A man walking with his dogs on his farm in the evening started hearing voices talking in a language he could not understand. Suddenly there was a strong wind and he came up on a creature that appeared to be a wolf, but three times larger than the size of a normal wolf, and with glowing orange eyes. It began to growl, so he shot his rifle at it, but the bullet hit the creature and fell into the snow like a pebble. A strong gust of wind blew again, and the creature quickly turned and disappeared into the darkness. When the man went over to where it had been standing, there were no prints or tracks in the snow, the only mark was the spot where his bullet fell in the snow.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Pennsylvania",
        "title": "Black Mesa East",
        "trailLinks": [
          "berge.info",
          "nitzsche.io",
          "fritsch-schmidt.biz"
        ]
      },
      {
        "description": "A woman driving along a highway at night was overcome with a sudden overwhelming feeling of dread. She felt an urging in her mind that she should turn around and go back the other direction on the road. She shook off the feeling and continued, thinking it was only anxiety being on the road alone. She then saw in the corner of her headlight on the shoulder, a strange animal running alongside her truck, keeping pace at 70mph. It turned and looked at her and she slammed on her breaks, startled. She stated it had a face that resembled a human, but different. When she shined her light where the creature had been, there was nothing there. She decided to turn around and go back.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Maine",
        "title": "Sector C Test Labs",
        "trailLinks": [
          "bradtke.info",
          "botsford.co",
          "carter.com"
        ]
      },
      {
        "description": "A father and son on a hunting ranch out before sunrise both reported the sudden onset of a feeling of being watched. They shined their flashlights out of the hunting blind and saw something dart away in the periphery. Figuring it was probably nothing of concern, they both shrugged it off. A short time later, the son needed to use the bathroom and exited the blind with the father following behind. When they turned around, they reported that standing in front of them was a mangled-looking coyote-human hybrid creature standing on its hind legs looking at them. They both panicked and tried to scramble back into the blind, and the creature darted into the trees.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "New Mexico",
        "title": "Sector C Test Labs",
        "trailLinks": [
          "west.biz",
          "ernser.com",
          "okon.org"
        ]
      },
      {
        "description": "A man was awoken during the night to an extremely bright light shining in through his bedroom window. He decided to get out of bed to see where the light was coming from outside. He was startled to find a figure standing in his room between himself and his window. He was unable to move or scream, and the figure approached him. It reached out and began tapping on his forehead with what felt like something sharp or pointed. He blacked out and woke up on the floor the next morning. He was found to have a small unexplained red spot of broken skin in the center of his forehead.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Iowa",
        "title": "Black Mesa East",
        "trailLinks": [
          "mcclure.io",
          "huels.name",
          "runolfsdottir.co"
        ]
      },
      {
        "description": "A family of six was sitting around a campfire in their back yard late at night. They reported that suddenly a blinding blue light appeared above them. The next thing they remember, they were all standing inside their house facing the back door.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "West Virginia",
        "title": "White Forest",
        "trailLinks": [
          "huel.biz",
          "cassin.com",
          "steuber.org"
        ]
      },
      {
        "description": "A woman with a sick elderly dog was sitting on the floor comforting her pet. She heard a strange sound and a small humanoid creature with large eyes appeared beside her. The creature reached out and rested its hand on the dog. The womans husband entered the room, and jumped back, not knowing what the creature was. It was startled and darted outside through the dog door.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Maryland",
        "title": "Black Mesa East",
        "trailLinks": [
          "lebsack.co",
          "nader-frami.name",
          "cormier.io"
        ]
      },
      {
        "description": "A group of friends vacationing on a boat reported seeing a huge creature with a long neck arch out of the water.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Utah",
        "title": "Sector G Hydro Electric",
        "trailLinks": [
          "schulist.name",
          "kuphal-stracke.com",
          "hoeger-hirthe.info"
        ]
      },
      {
        "description": "Police received multiple calls of a strange extremely large creature swimming at high speed and emitting a low freqency noise.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Maine",
        "title": "Sector G Hydro Electric",
        "trailLinks": [
          "grimes.com",
          "cummings-schmeler.net",
          "reilly.net"
        ]
      },
      {
        "description": "A group of college students playing with a drone recorded a massive unknown creature swimming in the loch.",
        "image": "https://loremflickr.com/300/300/cryptid",
        "location": "Colorado",
        "title": "Xen",
        "trailLinks": [
          "padberg-hoppe.name",
          "mohr.com",
          "block.biz"
        ]
      }
    ]
  }
}
```

</details>


## Collaborators


<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <!-- Darren -->
    <td align="center"><a href="https://github.com/dkulback"><img src="https://avatars.githubusercontent.com/u/83717116?v=4" width="100px;" alt=""/><br /><sub><b>Darren (he/him)</b></sub></a><br /><a href="https://www.linkedin.com/in/darren-kulback-9b2394189/" title="Code"> LinkedIn </a></td>
    <!-- Eric -->
    <td align="center"><a href="https://github.com/echon006"><img src="https://avatars.githubusercontent.com/u/89038271?v=4" width="100px;" alt=""/><br /><sub><b>Eric (he/him)</b></sub></a><br /><a href="https://www.linkedin.com/in/eric-chon-70049b161/" title="Code">  LinkedIn  </a></td>
    <!-- Mallory -->
    <td align="center"><a href="https://github.com/Malllll12"><img src="https://avatars.githubusercontent.com/u/69017022?v=4" width="100px;" alt=""/><br /><sub><b>Mallory (she/her)</b></sub></a><br /><a href="https://www.linkedin.com/in/mallory-vining/" title="Code"> LinkedIn </a></td>
    <!-- Parker -->
     <td align="center"><a href="https://github.com/ParkerLockhart"><img src="https://avatars.githubusercontent.com/u/88950699?v=4" width="100px;" alt=""/><br /><sub><b>Parker (they/them)</b></sub></a><br /><a href="https://www.linkedin.com/in/parker-lockhart/" title="Code"> LinkedIn </a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->
