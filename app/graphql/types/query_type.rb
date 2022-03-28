module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me

    field :cryptid_by_id, CryptidType, "get Cryptid by ID" do
      argument :id, ID
    end

    def cryptid_by_id(args)
      Cryptid.find_by(id: args[:id])
    end

    field :cryptid_by_name, CryptidType, "Cryptid by name" do
      argument :name, String
    end

    def cryptid_by_name(args)
      Cryptid.find_by(name: args[:name])
    end

    field :get_cryptids, [CryptidType], null: false,
      description: "All cryptids"

    def get_cryptids
      Cryptid.all
    end

    field :sightings, [SightingType], null: false,
      description: "All sightings"

    def sightings
      Sighting.all
    end
  end
end
