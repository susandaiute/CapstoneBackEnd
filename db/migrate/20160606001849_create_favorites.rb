class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :name, null: false
      t.string :description, null: false

      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
