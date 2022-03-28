module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField


    field :cryptid_by_id, resolver: Queries::CryptidById
    field :cryptid_by_name, resolver: Queries::CryptidByName
    field :get_cryptids, resolver: Queries::GetCryptids
    # field :cryptid_by_range, resolver: Queries::CryptidByRange


    field :sightings, [SightingType], null: false,
      description: "All sightings"

    def sightings
      Sighting.all
    end

    field :sighting_by_id, SightingType, "get Sighting by ID" do
      argument :id, ID
    end

    def sighting_by_id(args)
      Sighting.find(args[:id])
    end
  end
end
