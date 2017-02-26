class RunNpc < ApplicationRecord
  belongs_to :run
  belongs_to :npc, class_name: "User"
  belongs_to :character
end
