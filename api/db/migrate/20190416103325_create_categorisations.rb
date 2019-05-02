class CreateCategorisations < ActiveRecord::Migration[5.2]
  def change
    create_table :categorisations do |t|
      t.belongs_to :podcast
      t.belongs_to :category

      t.timestamps
    end
  end
end
