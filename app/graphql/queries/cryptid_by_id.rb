# query to get cryptid by id
module Queries
  class CryptidById < Queries::BaseQuery
    description 'Find a cryptid by id'

    argument :id, ID, required: true

    type Types::CryptidType, null: false

    def resolve(args)
      Cryptid.find_by(id: args[:id])
    end
  end
end
