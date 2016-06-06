class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :name
      t.string :location
      t.string :breed
      t.string :type
      t.integer :age
      t.string :gender

      t.timestamps null: false
    end
  end
end
