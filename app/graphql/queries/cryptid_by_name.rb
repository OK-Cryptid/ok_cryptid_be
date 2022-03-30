# query to get cryptid by name
module Queries
  class CryptidByName < Queries::BaseQuery
    description 'Find a cryptid by name'

    argument :name, String

    type Types::CryptidType, null: false

    def resolve(args)
      Cryptid.search(args[:name]).first
    end
  end
end
