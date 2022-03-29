module Queries
  class CryptidByName < Queries::BaseQuery
    description 'Find a cryptid by name'

    argument :name, String

    # type [Types::CryptidType], null: false # get working in phase 2
    type Types::CryptidType, null: false

    def resolve(args)
        Cryptid.search_name(args[:name]).first
    end
  end
end
