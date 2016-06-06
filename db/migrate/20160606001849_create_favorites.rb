class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.string :breed, null: false
      t.string :type, null: false
      t.integer :age, null: false
      t.string :gender, null: false

      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
