![with-bg](https://user-images.githubusercontent.com/69017022/161345695-e2ec9ddb-34a0-493a-9232-80b70a8b3dab.png)

[![CircleCI](https://circleci.com/gh/circleci/circleci-docs.svg?style=svg)](https://circleci.com/gh/circleci/circleci-docs)
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
- GraphQL: [graphql](https://github.com/rmosolgo/graphql-ruby) and [graphiql-rails](https://github.com/rmosolgo/graphiql-rails) 
- CORS: [rack-cors](https://github.com/cyu/rack-cors)
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
      "name": "Skinwalker",
      "dangerLevel": "10",
      "description": "A skinwalker is a type of harmful witch who has the ability to turn into, possess, or disguise themselves as an animal for the purpose of committing harm. Skin-walkers are not well understood outside of Navajo culture, mostly due to reluctance to discuss the subject with outsiders.",
      "image": "https://bit.ly/3uzpUPx",
      "range": "Western United States, Appalachia",
      "sightings": [
        {
          "title": "2004-07-06"
        },
        {
          "title": "2016-06-19"
        },
        {
          "title": "1988-04-09"
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
        "dangerLevel": "7",
        "description": "Bigfoot, also called Sasquatch (from Salish se’sxac: “wild men”) is a large, hairy, humanlike creature described as ranging from 6 to 15 feet tall. It is observed standing on two feet, often giving off a foul smell, and moving silently or emitting a high-pitched cry. Footprints have measured up to 24 inches in width.",
        "image": "https://bit.ly/3JKsNDs",
        "range": "Rocky Mountains, Appalachian Trial, Coastal Plain",
        "sightings": [
          {
            "title": "1941-09-25"
          },
          {
            "title": "2001-05-24"
          },
          {
            "title": "2009-01-09"
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
        "dangerLevel": "8",
        "description": "A subterranean gnome-like creature described as a littler person approximately 2ft tall, with a disproportionately large head, long arms, wrinkled skin, and white whiskers. It sometimes wears a tiny version of standard miner's garb and commits random mischief, such as stealing miners' unattencded tools and food.",
        "image": "https://bit.ly/3qDsItE",
        "range": "underground Pennsylvania, Colorado, Nevada, California",
        "sightings": [
          {
            "title": "1923-01-20"
          },
          {
            "title": "1953-05-05"
          },
          {
            "title": "1997-10-28"
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
        "name": "Alien",
        "dangerLevel": "5",
        "description": "Also called extraterrestrial life, aliens are intelligent beings that do not originate from earth.",
        "image": "https://bit.ly/3tHKvBO",
        "range": "unknown",
        "sightings": [
          {
            "title": "1985-10-07"
          },
          {
            "title": "1996-10-13"
          },
          {
            "title": "1960-03-18"
          }
        ]
      },
      {
        "name": "Bigfoot",
        "dangerLevel": "7",
        "description": "Bigfoot, also called Sasquatch (from Salish se’sxac: “wild men”) is a large, hairy, humanlike creature described as ranging from 6 to 15 feet tall. It is observed standing on two feet, often giving off a foul smell, and moving silently or emitting a high-pitched cry. Footprints have measured up to 24 inches in width.",
        "image": "https://bit.ly/3JKsNDs",
        "range": "Rocky Mountains, Appalachian Trial, Coastal Plain",
        "sightings": [
          {
            "title": "1941-09-25"
          },
          {
            "title": "2001-05-24"
          },
          {
            "title": "2009-01-09"
          }
        ]
      },
      {
        "name": "Chupacabra",
        "dangerLevel": "8",
        "description": "The chupacabra, literally 'goat-sucker' in Spanish, is described as dog-like or reptilian and alien-like. A heavy creature, approximately the size of a small bear, with a row of spines reaching from the neck to the base of the tail, its name comes from the creature's reported vampirism-- it is said to attack and drink the blood of livestock, particularly goats.",
        "image": "https://bit.ly/3wGyYov",
        "range": "Southwestern US, Puerto Rico, Maine",
        "sightings": [
          {
            "title": "1960-08-21"
          },
          {
            "title": "2003-01-09"
          },
          {
            "title": "1970-07-19"
          }
        ]
      },
      {
        "name": "Jackalope",
        "dangerLevel": "7",
        "description": "A jackrabbit and antelope hybrid. Though very shy unless approached, this creature is known to be aggressive. Also called the 'warrior rabbit'. However this beast can be tamed with the offering of fine whiskey.",
        "image": "https://allthatsinteresting.com/wordpress/wp-content/uploads/2018/05/jackalope.jpg",
        "range": "Western United States",
        "sightings": [
          {
            "title": "2011-03-21"
          },
          {
            "title": "1986-01-14"
          },
          {
            "title": "2014-06-14"
          }
        ]
      },
      {
        "name": "Loch Ness Monster",
        "dangerLevel": "4",
        "description": "A creature affectionately known as Nessie, it is a large, long-necked creature that inhabits Loch Ness in the Scottish Highlands.",
        "image": "https://bit.ly/3Nons6V",
        "range": "Scottish Highlands",
        "sightings": [
          {
            "title": "1922-07-11"
          },
          {
            "title": "2011-04-22"
          },
          {
            "title": "1963-01-11"
          }
        ]
      },
      {
        "name": "Mothman",
        "dangerLevel": "9",
        "description": "Mothman is a black 10-foot creature with wings and red eyes.",
        "image": "https://bit.ly/3INwjLP",
        "range": "West Virginia, Chicago",
        "sightings": [
          {
            "title": "1997-06-26"
          },
          {
            "title": "1981-01-01"
          },
          {
            "title": "1986-05-25"
          }
        ]
      },
      {
        "name": "Nightcrawler",
        "dangerLevel": "6",
        "description": "Nightcrawlers appear to be relatively short creatures (approx. 1.5 meters) with most of their height being made up of their legs as they possess an extremely small upper body. It is an extremely thin, white humanoid with no discernible arms.",
        "image": "https://bit.ly/37Yiei1",
        "range": "California",
        "sightings": [
          {
            "title": "1984-03-29"
          },
          {
            "title": "1934-11-10"
          },
          {
            "title": "1985-10-02"
          }
        ]
      },
      {
        "name": "Skinwalker",
        "dangerLevel": "10",
        "description": "A skinwalker is a type of harmful witch who has the ability to turn into, possess, or disguise themselves as an animal for the purpose of committing harm. Skin-walkers are not well understood outside of Navajo culture, mostly due to reluctance to discuss the subject with outsiders.",
        "image": "https://bit.ly/3uzpUPx",
        "range": "Western United States, Appalachia",
        "sightings": [
          {
            "title": "2004-07-06"
          },
          {
            "title": "2016-06-19"
          },
          {
            "title": "1988-04-09"
          }
        ]
      },
      {
        "name": "Tommyknocker",
        "dangerLevel": "8",
        "description": "A subterranean gnome-like creature described as a littler person approximately 2ft tall, with a disproportionately large head, long arms, wrinkled skin, and white whiskers. It sometimes wears a tiny version of standard miner's garb and commits random mischief, such as stealing miners' unattencded tools and food.",
        "image": "https://bit.ly/3qDsItE",
        "range": "underground Pennsylvania, Colorado, Nevada, California",
        "sightings": [
          {
            "title": "1923-01-20"
          },
          {
            "title": "1953-05-05"
          },
          {
            "title": "1997-10-28"
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
    <summary> Sightings by Location: </summary>

```
Query
  
{
  sightingByLocation(location: "colorado") {
    cryptid {
        name
        }
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
    "sightingByLocation": [
      {
        "cryptid": {
          "name": "Bigfoot"
        },
        "description": "A youth group was camping in the Marble Mountain Wilderness when leader Jim Mills noticed a strange-looking creature skulking along a ridge nearby.",
        "image": "https://assets3.thrillist.com/v1/image/1393089/1584x1056/crop;webp=auto;jpeg_quality=60;progressive.jpg",
        "location": "Leadville, Colorado",
        "title": "2001-05-24",
        "trailLinks": [
          "https://www.alltrails.com/explore/trail/us/colorado/boulders-and-giddy-up-loop",
          "https://www.alltrails.com/explore/trail/us/colorado/mineral-belt-trail"
        ]
      },
      {
        "cryptid": {
          "name": "Tommyknocker"
        },
        "description": "A miner heard the voice of a young boy calling for help while deep inside the mines. Coworkers warned him not to follow the voice, but he reportedly felt compelled to make sure the boy was safe. When he went into a tunnel to search for the child, coworkers reported that they heard knocking and whispering sounds and shouted for him to turn back. He responded that he thought he saw a small figure perched high up in the cave. The tunnel then collapsed, killing him.",
        "image": "https://bit.ly/3iSXH0M",
        "location": "Telluride, Colorado",
        "title": "1923-01-20",
        "trailLinks": [
          "https://bit.ly/3tOq6Lq",
          "https://bit.ly/3qLvmO7",
          "https://bit.ly/3iKZLaP"
        ]
      },
      {
        "cryptid": {
          "name": "Tommyknocker"
        },
        "description": "A group of men working in a local mine reported to their supervisor that when working in a certain area, they have been getting pelted with rocks, their tools are being taken, their lights keep inexplicably going out, and their ladders are being shaken. Several men have reported to hearing the voice of a coworker who died in an accident the previous year.",
        "image": "https://bit.ly/38j57bu",
        "location": "Leadville, Colorado",
        "title": "1997-10-28",
        "trailLinks": [
          "https://bit.ly/3DpixhK",
          "https://bit.ly/3uHP12N",
          "https://bit.ly/35l7edE"
        ]
      }
    ]
  }
}
```

</details>
<details>
    <summary> Single Sighting by ID: </summary>

```
Query
  
{
  sightingById(id: "4") {
    cryptid {
        name
        }
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
      "cryptid": {
        "name": "Mothman"
      },
      "description": "Five gravediggers claimed to see a human-like figure soaring just above them in the autumn trees.",
      "image": "https://www.snopes.com/tachyon/2016/11/a29.jpg",
      "location": "Point Pleasant, West Virgina",
      "title": "1997-06-26",
      "trailLinks": [
        "https://www.alltrails.com/explore/trail/us/west-virginia/point-plesant-walkin-trail"
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
    cryptid {
        name
        }
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
        "cryptid": {
          "name": "Bigfoot"
        },
        "description": "Spotted Bigfoot along the highway near millstone. Described the creature as having looked back at them on the shoulder of the road — an encounter that ultimately lasted seconds",
        "image": "https://www.science.org/do/10.1126/article.22891/full/sn-bigfooth.jpg",
        "location": "Buchers Mills, Pennsylvania",
        "title": "1941-09-25",
        "trailLinks": [
          "https://www.alltrails.com/explore/trail/us/pennsylvania/chapman-nature-trail?ref=result-card",
          "https://www.alltrails.com/explore/trail/us/pennsylvania/adams-run-trail"
        ]
      },
      {
        "cryptid": {
          "name": "Bigfoot"
        },
        "description": "A youth group was camping in the Marble Mountain Wilderness when leader Jim Mills noticed a strange-looking creature skulking along a ridge nearby.",
        "image": "https://assets3.thrillist.com/v1/image/1393089/1584x1056/crop;webp=auto;jpeg_quality=60;progressive.jpg",
        "location": "Leadville, Colorado",
        "title": "2001-05-24",
        "trailLinks": [
          "https://www.alltrails.com/explore/trail/us/colorado/boulders-and-giddy-up-loop",
          "https://www.alltrails.com/explore/trail/us/colorado/mineral-belt-trail"
        ]
      },
      {
        "cryptid": {
          "name": "Bigfoot"
        },
        "description": "A hiker was walking when he spotted a large creature to the left in the woods. As he approached, the creature stood up on two legs and started throwing rocks at him.",
        "image": "https://bit.ly/36LEZ8H",
        "location": "Roosevelt, Utah",
        "title": "2009-01-09",
        "trailLinks": [
          "https://www.alltrails.com/explore/trail/us/utah/hidden-lake-via-duck-lake-trail-210",
          "https://www.alltrails.com/explore/trail/us/utah/crystal-lake-loop--2"
        ]
      },
      {
        "cryptid": {
          "name": "Mothman"
        },
        "description": "Five gravediggers claimed to see a human-like figure soaring just above them in the autumn trees.",
        "image": "https://www.snopes.com/tachyon/2016/11/a29.jpg",
        "location": "Point Pleasant, West Virgina",
        "title": "1997-06-26",
        "trailLinks": [
          "https://www.alltrails.com/explore/trail/us/west-virginia/point-plesant-walkin-trail"
        ]
      },
      {
        "cryptid": {
          "name": "Mothman"
        },
        "description": "A man was driving along State Route 2 saw something jump from tree to tree. He pulled off the road and snapped some pictures. In the pictures, the creature appears to have wings with pointed tips and long legs, bent at an awkward angle.",
        "image": "https://bit.ly/3NrXW0R",
        "location": "Point Pleasant, West Virgina",
        "title": "1981-01-01",
        "trailLinks": [
          "https://www.alltrails.com/explore/trail/us/west-virginia/point-plesant-walkin-trail"
        ]
      },
      {
        "cryptid": {
          "name": "Mothman"
        },
        "description": "A man saw something that resembled a humanoid pterodactyl flying awkwardly.",
        "image": "https://bit.ly/3wOYmbK",
        "location": "Chicago, Illinois",
        "title": "1986-05-25",
        "trailLinks": [
          "https://www.alltrails.com/explore/trail/us/illinois/chicago-riverwalk",
          "https://www.alltrails.com/explore/trail/us/illinois/millennium-park-trail"
        ]
      },
      {
        "cryptid": {
          "name": "Nightcrawler"
        },
        "description": "A man put up trail cameras in his yard to see what was causing his dogs to bark during the night. The cameras captured images of strange pale, small, armless creatures walking.",
        "image": "https://bit.ly/36N64IR",
        "location": "Old Bretz Mill, California",
        "title": "1984-03-29",
        "trailLinks": [
          "https://www.alltrails.com/explore/trail/us/california/granite-ridge-loop",
          "https://www.alltrails.com/explore/trail/us/california/shaver-lake-trail"
        ]
      },
      {
        "cryptid": {
          "name": "Nightcrawler"
        },
        "description": "A 17 year old motorist saw a strange thing on the side of the road when driving at night. It was thin and pale with long legs, and moved oddly as if disjointed.",
        "image": "https://bit.ly/36BQdMZ",
        "location": "Hesperia, California",
        "title": "1934-11-10",
        "trailLinks": [
          "https://www.alltrails.com/explore/trail/us/california/coxey-rd",
          "https://www.alltrails.com/explore/trail/us/california/mount-san-antonio-mount-baldy-notch-trail"
        ]
      },
      {
        "cryptid": {
          "name": "Nightcrawler"
        },
        "description": "A video captured on home surveillance system shows a white creature with long legs and no upper body walking slowly across the yard.",
        "image": "https://bit.ly/36WIuJ0",
        "location": "Fullerton, California",
        "title": "1985-10-02",
        "trailLinks": [
          "https://www.alltrails.com/explore/trail/us/california/mount-san-antonio-mount-baldy-notch-trail",
          "https://www.alltrails.com/explore/trail/us/california/juanita-cooke-trail-to-hitscher-park-trail"
        ]
      },
      {
        "cryptid": {
          "name": "Chupacabra"
        },
        "description": "A woman spotted a creature standing upright, resembling a reptilian kangaroo with huge red eyes. It ran into the brush when she screamed. Later, the livestock on the property were found to be dead. They were not eaten or mutilated, but were drained of blood.",
        "image": "https://bit.ly/3uypFEi",
        "location": "Arecibo, Puerto Rico",
        "title": "1960-08-21",
        "trailLinks": [
          "https://www.alltrails.com/explore/trail/puerto-rico/northern-region/charco-prieto-water-falls?u=i"
        ]
      },
      {
        "cryptid": {
          "name": "Chupacabra"
        },
        "description": "Two seven year old boys described seeing a dog-like creature with a row of spines down its back standing on its hind legs near the barn. Six of the family goats were found drained of blood approximately 40 feet away from where the creature had been lurking.",
        "image": "https://bit.ly/38bH3Hv",
        "location": "Bangor, Maine",
        "title": "2003-01-09",
        "trailLinks": [
          "https://www.alltrails.com/explore/trail/us/maine/brewer-riverwalk"
        ]
      },
      {
        "cryptid": {
          "name": "Chupacabra"
        },
        "description": "A man saw a large black-haired creature with red eyes and clawed hands come out of the trees and attack the family dog. He ran to get his gun, but when he returned, the creature was gone and the family dog was left dead with puncture wounds to neck.",
        "image": "https://bit.ly/3iKMijh",
        "location": "Utuado, Puerto Rico",
        "title": "1970-07-19",
        "trailLinks": [
          "https://www.alltrails.com/explore/trail/puerto-rico/central-region/canon-blanco-sendero-el-sofa?u=i",
          "https://www.alltrails.com/explore/trail/puerto-rico/central-region/charco-los-morones?u=i"
        ]
      },
      {
        "cryptid": {
          "name": "Tommyknocker"
        },
        "description": "A miner heard the voice of a young boy calling for help while deep inside the mines. Coworkers warned him not to follow the voice, but he reportedly felt compelled to make sure the boy was safe. When he went into a tunnel to search for the child, coworkers reported that they heard knocking and whispering sounds and shouted for him to turn back. He responded that he thought he saw a small figure perched high up in the cave. The tunnel then collapsed, killing him.",
        "image": "https://bit.ly/3iSXH0M",
        "location": "Telluride, Colorado",
        "title": "1923-01-20",
        "trailLinks": [
          "https://bit.ly/3tOq6Lq",
          "https://bit.ly/3qLvmO7",
          "https://bit.ly/3iKZLaP"
        ]
      },
      {
        "cryptid": {
          "name": "Tommyknocker"
        },
        "description": "Four men exploring a cave area started hearing a voice whispering their names, and a sequence of knocking from deeper in the cave. Two of the men felt it was a warning and decided to exit the cave while the other two stayed behind, laughing and jokingly calling out to the voices. The two men that remained were crushed in a sudden cave-in ten minutes later.",
        "image": "https://bit.ly/3IWfY7Q",
        "location": "Coleville, California",
        "title": "1953-05-05",
        "trailLinks": [
          "https://bit.ly/3tQGnjh",
          "https://bit.ly/3iKf9Ei"
        ]
      },
      {
        "cryptid": {
          "name": "Tommyknocker"
        },
        "description": "A group of men working in a local mine reported to their supervisor that when working in a certain area, they have been getting pelted with rocks, their tools are being taken, their lights keep inexplicably going out, and their ladders are being shaken. Several men have reported to hearing the voice of a coworker who died in an accident the previous year.",
        "image": "https://bit.ly/38j57bu",
        "location": "Leadville, Colorado",
        "title": "1997-10-28",
        "trailLinks": [
          "https://bit.ly/3DpixhK",
          "https://bit.ly/3uHP12N",
          "https://bit.ly/35l7edE"
        ]
      },
      {
        "cryptid": {
          "name": "Skinwalker"
        },
        "description": "A man walking with his dogs on his farm in the evening started hearing voices talking in a language he could not understand. Suddenly there was a strong wind and he came up on a creature that appeared to be a wolf, but three times larger than the size of a normal wolf,\n  and with glowing orange eyes. It began to growl, so he shot his rifle at it, but the bullet hit the creature and fell into the snow like a pebble. A strong gust of wind blew again, and the creature quickly turned and disappeared into the darkness. When the man went over to where it had been standing, there were no prints or tracks in the snow, the only mark was\n  the spot where his bullet fell in the snow.",
        "image": "https://ihr.fm/3tXZ0Ss",
        "location": "Chinle, Arizona",
        "title": "2004-07-06",
        "trailLinks": [
          "https://bit.ly/3JVZXA4",
          "https://bit.ly/3LtN8gT"
        ]
      },
      {
        "cryptid": {
          "name": "Skinwalker"
        },
        "description": "A woman driving along a highway at night was overcome with a sudden overwhelming feeling of dread. She felt an urging in her mind that she should turn around and go back the other direction on the road. She shook off the feeling and continued, thinking it was only\n  anxiety being on the road alone. She then saw in the corner of her headlight on the shoulder, a strange animal running alongside her truck, keeping pace at 70mph. It turned and looked at her and she slammed on her breaks, startled. She stated it had a face that resembled a human, but different. When she shined her light where the creature had been, there was nothing\n  there. She decided to turn around and go back.",
        "image": "https://bit.ly/3DAtJYL",
        "location": "Kirtland, New Mexico",
        "title": "2016-06-19",
        "trailLinks": [
          "https://bit.ly/3wRQSVc",
          "https://bit.ly/36F27Wn",
          "https://bit.ly/3JU7NKr"
        ]
      },
      {
        "cryptid": {
          "name": "Skinwalker"
        },
        "description": "A father and son on a hunting ranch out before sunrise both reported the sudden onset of a feeling of being watched. They shined their flashlights out of the hunting blind and saw something dart away in the periphery. Figuring it was probably nothing of concern, they both\n  shrugged it off. A short time later, the son needed to use the bathroom and exited the blind with the father following behind. When they turned around, they reported that standing in front of them was a mangled-looking coyote-human hybrid creature standing on its hind legs looking at them. They both panicked and tried to scramble back into the blind, and the creature\n  darted into the trees.",
        "image": "https://bit.ly/3NAnhFL",
        "location": "Ballard, Utah",
        "title": "1988-04-09",
        "trailLinks": [
          "https://bit.ly/36WJFIy",
          "https://bit.ly/36UvTWT",
          "https://bit.ly/36ZIPus"
        ]
      },
      {
        "cryptid": {
          "name": "Alien"
        },
        "description": "A man was awoken during the night to an extremely bright light shining in through his bedroom window. He decided to get out of bed to see where the light was coming from outside. He was startled to find a figure standing in his room between himself and his window. He was unable to\n  move or scream, and the figure approached him. It reached out and began tapping on his forehead with what felt like something sharp or pointed. He blacked out and woke up on the floor the next morning. He was found to have a small unexplained red spot of broken skin in the center of his forehead.",
        "image": "https://bit.ly/3uHfc9z",
        "location": "Dexter, New Mexico",
        "title": "1985-10-07",
        "trailLinks": [
          "https://bit.ly/3uFs4NC",
          "https://bit.ly/3DuEETW",
          "https://bit.ly/36WEiZU"
        ]
      },
      {
        "cryptid": {
          "name": "Alien"
        },
        "description": "A family of six was sitting around a campfire in their back yard late at night. They reported that suddenly a blinding blue light appeared above them. The next thing they remember, they were all standing inside their house facing the back door.",
        "image": "https://bit.ly/3LBKfux",
        "location": "Lubbock, Texas",
        "title": "1996-10-13",
        "trailLinks": [
          "https://bit.ly/3Dnh2jN"
        ]
      },
      {
        "cryptid": {
          "name": "Alien"
        },
        "description": "A woman with a sick elderly dog was sitting on the floor comforting her pet. She heard a strange sound and a small humanoid creature with large eyes appeared beside her. The creature reached out and rested its hand on the dog. The womans husband entered the room, and jumped back,\n  not knowing what the creature was. It was startled and darted outside through the dog door.",
        "image": "https://bit.ly/3NFlC1R",
        "location": "Paradise Inn, Washington",
        "title": "1960-03-18",
        "trailLinks": [
          "https://bit.ly/3IMgXHz",
          "https://bit.ly/3Lt4CKm",
          "https://bit.ly/36CdvSU"
        ]
      },
      {
        "cryptid": {
          "name": "Loch Ness Monster"
        },
        "description": "A group of friends vacationing on a boat reported seeing a huge creature with a long neck arch out of the water.",
        "image": "https://bit.ly/3uK7WKb",
        "location": "Scotland",
        "title": "1922-07-11",
        "trailLinks": [
          "https://bit.ly/3uAeStq",
          "https://bit.ly/36wsYnH"
        ]
      },
      {
        "cryptid": {
          "name": "Loch Ness Monster"
        },
        "description": "Police received multiple calls of a strange extremely large creature swimming at high speed and emitting a low freqency noise.",
        "image": "https://bit.ly/3qRksGL",
        "location": "Scotland",
        "title": "2011-04-22",
        "trailLinks": [
          "https://bit.ly/3JR7FeV",
          "https://bit.ly/3tN9ST0",
          "https://bit.ly/3DmtS1S"
        ]
      },
      {
        "cryptid": {
          "name": "Loch Ness Monster"
        },
        "description": "A group of college students playing with a drone recorded a massive unknown creature swimming in the loch.",
        "image": "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1240w,f_auto,q_auto:best/msnbc/Components/Photos/071001/071001_nessie_hmed_11a.jpg",
        "location": "Scotland",
        "title": "1963-01-11",
        "trailLinks": [
          "https://bit.ly/3iOkGd2"
        ]
      },
      {
        "cryptid": {
          "name": "Jackalope"
        },
        "description": "A child hiking with their parents spotted a strange looking rabbit in the distance",
        "image": "https://bit.ly/35rBR11",
        "location": "Pine Bluffs, Wyoming",
        "title": "2011-03-21",
        "trailLinks": [
          "https://bit.ly/3iJi00o",
          "https://bit.ly/3IJTmrb",
          "https://bit.ly/3Lsloca"
        ]
      },
      {
        "cryptid": {
          "name": "Jackalope"
        },
        "description": "Two sheep ranchers saw something that looked like a tinhy antelope approach their fire at dusk.",
        "image": "https://sandysteinman.files.wordpress.com/2021/04/166485552_3744836988903413_5104277642228470578_n.png",
        "location": "Weskan, Kansas",
        "title": "1986-01-14",
        "trailLinks": [
          "https://bit.ly/3iPkA57"
        ]
      },
      {
        "cryptid": {
          "name": "Jackalope"
        },
        "description": "A group of students on an astronomy field trip saw a pair of glowing eyes in the darkness. When they pointed a flashlight at it they could see a small creature dart into tall grass.",
        "image": "https://1.bp.blogspot.com/-88FOArDPjkU/T0pyvXNQ74I/AAAAAAAAAoc/TlaZl950Ojo/s320/Jackalope+2.jpg",
        "location": "Saratoga, Wyoming",
        "title": "2014-06-14",
        "trailLinks": [
          "https://bit.ly/3iNJTnX",
          "https://bit.ly/38bVMCi",
          "https://bit.ly/3IP0B14"
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
