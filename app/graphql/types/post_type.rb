module Types
  class PostType < Types::BaseObject
    implements GraphQL::Types::Relay::Node
    global_id_field :id

    field :title, String, null: false
    field :body, String, null: false
    field :datetime, GraphQL::Types::ISO8601DateTime, null: false

    field :author, UserType, null: false
    def owner
      object.author
    end

    field :blog, BlogType, null: false
    def blog
      object.blog
    end
  end
end
