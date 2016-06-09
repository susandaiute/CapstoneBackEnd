class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :user_id
  def editable
    scope == object.user
  end
end
