class CreateGameRunJoinTables < ActiveRecord::Migration[5.0]
  def change
    create_table :game_has_editors do |t|
      t.references :game, index: true, foreign_key: true, null: false
      t.references :editor, index: true, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end

    create_table :game_has_authors do |t|
      t.references :game, index: true, foreign_key: true, null: false
      t.references :author, index: true, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end

    create_table :run_has_editors do |t|
      t.references :run, index: true, foreign_key: true, null: false
      t.references :editor, index: true, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end

    create_table :run_has_gms do |t|
      t.references :run, index: true, foreign_key: true, null: false
      t.references :gm, index: true, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end

  end
end
