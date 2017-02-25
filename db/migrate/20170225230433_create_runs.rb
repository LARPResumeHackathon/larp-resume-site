class CreateRuns < ActiveRecord::Migration[5.0]
  def change
    create_table :runs do |t|
      t.string     :website
      t.text       :description
      t.datetime   :start_datetime
      t.datetime   :end_datetime
      t.references :game, index: true, foreign_key: true, null: false
      t.string     :location
      t.boolean    :private, default: false, null: false

      t.timestamps
    end
  end
end
