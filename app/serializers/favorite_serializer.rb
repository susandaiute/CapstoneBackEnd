class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :breed, :type, :age, :gender, :editable
  def editable
    scope == object.user
  end
end
