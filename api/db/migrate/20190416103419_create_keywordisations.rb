class CreateKeywordisations < ActiveRecord::Migration[5.2]
  def change
    create_table :keywordisations do |t|
      t.belongs_to :keyword, foreign_key: true
      t.belongs_to :episode, foreign_key: true

      t.timestamps
    end
  end
end
