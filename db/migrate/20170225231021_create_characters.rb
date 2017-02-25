class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.references :game, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
