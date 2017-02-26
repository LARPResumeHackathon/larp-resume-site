class Run < ApplicationRecord
  belongs_to :game
  has_and_belongs_to_many :editors, class_name: "User",
                          join_table: :runs_editors,
                          association_foreign_key: :editor_id
  has_and_belongs_to_many :gms, class_name: "User",
                          join_table: :runs_gms,
                          association_foreign_key: :gm_id
  has_and_belongs_to_many :players, class_name: "User",
                          join_table: :runs_players,
                          association_foreign_key: :player_id
  has_and_belongs_to_many :npcs, class_name: "User",
                          join_table: :runs_npcs,
                          association_foreign_key: :npc_id
end
