class CreateCampaignSessionJoinTables < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns_editors do |t|
      t.references :campaign, index: true, foreign_key: true, null: false
      t.references :editor, index: true, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end

    create_table :sessions_gms do |t|
      t.references :session, index: true, foreign_key: true, null: false
      t.references :gm, index: true, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end

    create_table :sessions_players do |t|
      t.references :session, index: true, foreign_key: true, null: false
      t.references :player, index: true, foreign_key: { to_table: :users }, null: false
      t.string     :character_name
      t.boolean    :private, default: false, null: false

      t.timestamps
    end

    create_table :sessions_npcs do |t|
      t.references :session, index: true, foreign_key: true, null: false
      t.references :npc, index: true, foreign_key: { to_table: :users }, null: false
      t.string     :character_name
      t.boolean    :private, default: false, null: false

      t.timestamps
    end
  end
end
