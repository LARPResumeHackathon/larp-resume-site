class CreateSessionPlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :session_players do |t|
      t.references :session,   index: true, foreign_key: true, null: false
      t.references :player,    index: true, foreign_key: { to_table: :users }, null: false
      t.references :character, index: true, foreign_key: true, null: false
      t.boolean    :private,   default: false, null: false

      t.timestamps
    end
  end
end
