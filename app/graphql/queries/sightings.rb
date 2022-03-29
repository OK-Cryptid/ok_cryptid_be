module Queries
  class Sightings < Queries::BaseQuery
    description "All sightings"

    type [Types::SightingType], null: false

    def resolve
      ::Sighting.all
    end
  end
end 
