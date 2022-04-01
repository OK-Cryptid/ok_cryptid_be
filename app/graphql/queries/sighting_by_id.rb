module Queries
  class SightingById < Queries::BaseQuery
    description 'Find a sighting by id'

    argument :id, ID, required: true

    type Types::SightingType, null: false

    def resolve(args)
      Sighting.find(args[:id])
    end
  end
end 
