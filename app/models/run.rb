class Run < ApplicationRecord
  belongs_to :game
  has_and_belongs_to_many :editors, class_name: "User",
                          join_table: :runs_editors,
                          association_foreign_key: :editor_id
  has_and_belongs_to_many :gms, class_name: "User",
                          join_table: :runs_gms,
                          association_foreign_key: :gm_id

  has_many :run_npcs
  has_many :run_players
  has_many :npcs, through: :run_npcs
  has_many :players, through: :run_players
end
