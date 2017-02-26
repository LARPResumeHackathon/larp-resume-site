class Game < ApplicationRecord
  has_many :runs
  has_and_belongs_to_many :editors, class_name: "User",
                          join_table: :games_editors,
                          association_foreign_key: :editor_id
  has_and_belongs_to_many :authors, class_name: "User",
                          join_table: :games_authors,
                          association_foreign_key: :author_id
end
