module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :create_cryptid, CryptidType, null: false, description: "An example field added by the generator" do
      argument :name, String
      argument :range, String
      argument :danger_level, String
      argument :image, String
      argument :description, String
    end

    def create_cryptid(payload)
      Cryptid.create(payload)
    end
  end
end
