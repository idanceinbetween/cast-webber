class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :content
      t.references :episode, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
