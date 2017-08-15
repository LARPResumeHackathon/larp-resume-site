class Session < ApplicationRecord
  belongs_to :campaign
  has_and_belongs_to_many :gms, class_name: "User",
                          join_table: :sessions_gms,
                          association_foreign_key: :gm_id

  has_many :session_npcs
  has_many :session_players
  has_many :npcs, through: :session_npcs
  has_many :players, through: :session_players
end
