class Character < ApplicationRecord
  belongs_to :game
  has_and_belongs_to_many :editors, class_name: "User",
                          join_table: :characters_editors,
                          association_foreign_key: :editor_id
end
