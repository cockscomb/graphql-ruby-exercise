module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :body, String, null: false
    field :datetime, GraphQL::Types::ISO8601DateTime, null: false
  end
end
