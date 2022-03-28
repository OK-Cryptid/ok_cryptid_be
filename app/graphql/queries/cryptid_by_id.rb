module Queries
  class CryptidById < Queries::BaseQuery
    description 'Find a cryptid by id'

    argument :id, ID, required: true

    type Types::CryptidType, null: false

    def resolve(id:)
      ::Cryptid.find(id)
    end
  end
end
