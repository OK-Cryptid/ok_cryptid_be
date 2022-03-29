module Queries
  class CryptidByRange < Queries::BaseQuery
    description 'Find a cryptid by range'

    argument :range, String

    type Types::CryptidType, null: false

    def resolve(args)
      Cryptid.search_range(args[:range]).first
    end
  end
end
