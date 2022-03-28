module Queries
  class CryptidByName < Queries::BaseQuery
    description 'Find a cryptid by name'

    argument :name, String

    type Types::CryptidType, null: false

    def resolve(args)
      Cryptid.find_by(name: args[:name])
    end
  end
end