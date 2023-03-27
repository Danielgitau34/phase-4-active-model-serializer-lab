# frozen_string_literal: true

# Serializes a tag object into a JSON representation.
class TagSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :posts
end
