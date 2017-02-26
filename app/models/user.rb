class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :campaigns, join_table: :campaigns_editors,
                          foreign_key: :editor_id
  has_and_belongs_to_many :sessions, join_table: :sessions_gms,
                          foreign_key: :gm_id
  has_and_belongs_to_many :sessions, join_table: :sessions_players,
                          foreign_key: :player_id
  has_and_belongs_to_many :sessions, join_table: :sessions_npcs,
                          foreign_key: :npc_id
  has_and_belongs_to_many :games, join_table: :games_editors,
                          foreign_key: :editor_id
  has_and_belongs_to_many :games, join_table: :games_authors,
                          foreign_key: :author_id
  has_and_belongs_to_many :runs, join_table: :runs_editors,
                          foreign_key: :editor_id
  has_and_belongs_to_many :runs, join_table: :runs_players,
                          foreign_key: :player_id
  has_and_belongs_to_many :runs, join_table: :runs_npcs,
                          foreign_key: :npc_id
  has_and_belongs_to_many :runs, join_table: :runs_gms,
                          foreign_key: :gm_id
  has_and_belongs_to_many :characters, join_table: :characters_editors,
                          foreign_key: :editor_id

end
