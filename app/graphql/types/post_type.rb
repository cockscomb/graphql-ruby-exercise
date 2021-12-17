module Types
  class PostType < Types::BaseObject
    implements GraphQL::Types::Relay::Node
    global_id_field :id

    field :title, String, null: false
    field :body, String, null: false
    field :datetime, GraphQL::Types::ISO8601DateTime, null: false

    field :author, UserType, null: false
    def owner
      dataloader.with(Sources::ActiveRecordObject, ::User).load(object.author_id)
    end

    field :blog, BlogType, null: false
    def blog
      dataloader.with(Sources::ActiveRecordObject, ::Blog).load(object.blog_id)
    end
  end
end
