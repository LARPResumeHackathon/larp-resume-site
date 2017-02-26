class Session < ApplicationRecord
  belongs_to :campaign
  has_and_belongs_to_many :gms, class_name: "User",
                          join_table: :sessions_gms,
                          association_foreign_key: :gm_id
  has_and_belongs_to_many :players, class_name: "User",
                          join_table: :sessions_players,
                          association_foreign_key: :player_id
  has_and_belongs_to_many :npcs, class_name: "User",
                          join_table: :sessions_npcs,
                          association_foreign_key: :npc_id

end
