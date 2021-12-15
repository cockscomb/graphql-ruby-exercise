module Types
  class BlogType < Types::BaseObject
    implements GraphQL::Types::Relay::Node
    global_id_field :id

    field :owner, UserType, null: false
    def owner
      object.owner
    end

    field :name, String, null: false

    field :posts, PostType.connection_type do
    end
    def posts
      object.posts.order(datetime: :desc)
    end
  end
end
