class CreateGameRunJoinTables < ActiveRecord::Migration[5.0]
  def change
    create_table :games_editors do |t|
      t.references :game, index: true, foreign_key: true, null: false
      t.references :editor, index: true, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end

    create_table :games_authors do |t|
      t.references :game, index: true, foreign_key: true, null: false
      t.references :author, index: true, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end

    create_table :runs_editors do |t|
      t.references :run, index: true, foreign_key: true, null: false
      t.references :editor, index: true, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end

    create_table :runs_gms do |t|
      t.references :run, index: true, foreign_key: true, null: false
      t.references :gm, index: true, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end

    create_table :runs_players do |t|
      t.references :run     , index: true, foreign_key: true, null: false
      t.references :player   , index: true, foreign_key: { to_table: :users }, null: false
      # t.references :character, index: true, foreign_key: true, null: false
      t.boolean    :private

      t.timestamps
    end

    create_table :runs_npcs do |t|
      t.references :run      , index: true, foreign_key: true, null: false
      t.references :npc      , index: true, foreign_key: { to_table: :users }, null: false
      # t.references :character, index: true, foreign_key: true, null: false
      t.boolean    :private

      t.timestamps
    end

    create_table :characters_editors do |t|
      t.references :character, index: true, foreign_key: true, null: false
      t.references :editor, index: true, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end

  end
end
