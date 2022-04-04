module Queries
  class SightingByLocation < Queries::BaseQuery
    description 'Find sightings by location'

    argument :location, String, required: true

    type [Types::SightingType], null: true

    def resolve(args)
      Sighting.eager_load(:cryptid).location_search(args[:location])
    end
  end
end
