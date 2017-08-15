class SessionNpc < ApplicationRecord
  belongs_to :session
  belongs_to :npc, class_name: "User"
  belongs_to :character
end
