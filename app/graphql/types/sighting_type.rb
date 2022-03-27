# frozen_string_literal: true

module Types
  class SightingType < Types::BaseObject
    field :id, ID, null: false
    field :cryptid_id, Integer
    field :location, String
    field :description, String
    field :image, String
    field :trail_links, [String]
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :title, String
  end
end
