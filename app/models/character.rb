class Character < ApplicationRecord
  belongs_to :game
  has_and_belongs_to_many :editors, class_name: "User",
                          join_table: :characters_editors,
                          association_foreign_key: :editor_id
  has_many :run_npcs
  has_many :run_players
  has_many :session_npcs
  has_many :session_players
end
