class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.string     :name,         null: false
      t.text       :description
      t.references :organization, index: true, foreign_key: true

      t.timestamps
    end
  end
end
