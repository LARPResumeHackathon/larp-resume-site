class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string  :title,           null: false
      t.text    :description
      t.string  :website
      t.integer :min_player_size
      t.integer :max_player_size
      t.string  :run_time

      t.timestamps
    end
  end
end
