class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :breed, :type, :age, :gender
end
