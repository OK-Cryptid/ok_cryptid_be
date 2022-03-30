# query to get cryptid by name
module Queries
  class CryptidByName < Queries::BaseQuery
    description 'Find a cryptid by name'

    argument :name, String

    type [Types::CryptidType], null: true

    def resolve(args)
      Cryptid.search_name(args[:name])
    end
  end
end
