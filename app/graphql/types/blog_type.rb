module Types
  class BlogType < Types::BaseObject
    field :id, ID, null: false
    field :owner_id, Integer, null: false
    field :name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
