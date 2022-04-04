module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :cryptid_by_id, resolver: Queries::CryptidById
    field :cryptid_by_name, resolver: Queries::CryptidByName
    field :get_cryptids, resolver: Queries::GetCryptids
    field :cryptid_by_range, resolver: Queries::CryptidByRange

    field :sightings, resolver: Queries::Sightings
    field :sighting_by_id, resolver: Queries::SightingById
    field :sighting_by_location, resolver: Queries::SightingByLocation
  end
end
