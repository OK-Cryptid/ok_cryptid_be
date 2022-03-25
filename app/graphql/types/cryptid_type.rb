# frozen_string_literal: true

module Types
  class CryptidType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :range, String
    field :danger_level, String
    field :image, String
    field :description, String
    field :sightings, [Types::SightingType]
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
