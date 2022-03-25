module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :cryptids, [CryptidType], null: false,
      description: "All cryptids"

    def cryptids
      cryptid = Cryptid.all
    end

    field :sightings, [SightingType], null: false,
      description: "All sightings"

    def sightings
      sighting = Sighting.all
    end
  end
end
