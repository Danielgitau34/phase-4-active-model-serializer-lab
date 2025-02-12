# frozen_string_literal: true

# app/serializers/profile_serializer.rb
class ProfileSerializer < ActiveModel::Serializer
  attributes :username, :email, :bio, :avatar_url
end

# app/serializers/post_serializer.rb
class PostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags

  def short_content
    object.content.truncate(40, omission: '...')
  end
end

# app/serializers/author_serializer.rb
class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile, serializer: ProfileSerializer
  has_many :posts, serializer: PostSerializer
end
