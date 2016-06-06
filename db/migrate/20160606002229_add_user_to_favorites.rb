class AddUserToFavorites < ActiveRecord::Migration
  def change
    add_reference :favorites, :creator, references: :user, index: true
    add_foreign_key :favorites, :users, column: :creator_id
  end
end
