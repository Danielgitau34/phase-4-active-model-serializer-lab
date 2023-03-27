# frozen_string_literal: true

# Serializes a Post model
class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :author_name

  belongs_to :author
  has_many :tags

  def author_name
    object.author.name
  end
end
