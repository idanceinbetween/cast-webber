class CreateEpisodes < ActiveRecord::Migration[5.2]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :description
      t.references :podcast, foreign_key: true
      t.integer :number
      t.integer :length

      t.timestamps
    end
  end
end
