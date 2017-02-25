class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.string     :title, null: false
      t.text       :description
      t.string     :website
      t.references :campaign, index: true, foreign_key: true, null: false
      t.datetime   :start_datetime
      t.datetime   :end_datetime
      t.string     :location
      t.boolean    :private, default: false, null: false

      t.timestamps
    end
  end
end
