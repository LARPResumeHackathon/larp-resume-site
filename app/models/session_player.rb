class SessionPlayer < ApplicationRecord
  belongs_to :session
  belongs_to :player, class_name: "User"
  belongs_to :character
end
