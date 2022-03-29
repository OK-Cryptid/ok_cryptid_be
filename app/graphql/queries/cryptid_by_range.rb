module Queries
  class CryptidByRange < Queries::BaseQuery
    description 'Find a cryptid by range'

    argument :range, String

    type [Types::CryptidType], null: true

    def resolve(args)
      Cryptid.search_range(args[:range])
    end
  end
end
