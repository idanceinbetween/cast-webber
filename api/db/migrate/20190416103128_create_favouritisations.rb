class CreateFavouritisations < ActiveRecord::Migration[5.2]
  def change
    create_table :favouritisations do |t|
      t.belongs_to :episode, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
