module Queries
  class GetCryptids < Queries::BaseQuery
    description "All cryptids"

    type [Types::CryptidType], null: false

    def resolve
      ::Cryptid.all
    end
  end
end
