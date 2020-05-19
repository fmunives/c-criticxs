class Game < ApplicationRecord
    validates :name, :gender, :price, :release_date, presence: true
    validates :gender, /("Simulator"|"Adventure"|"Strategy"|"Role-playing (RPG)"|"Shooter"|"Fighting"|"Sport")/
    validates :price, only_integer: true
end