class RunPlayer < ApplicationRecord
  belongs_to :run
  belongs_to :player, class_name: "User"
  belongs_to :character
end
