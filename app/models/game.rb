class Game < ApplicationRecord
    validates :name, :gender, :price, :release_date, presence: true
    validates :gender, format: { width: /(Simulator|Adventure|Strategy|Role\-playing\s{1}\(RPG\)|Shooter|Fighting|Sport)/}
    validates :price, only_integer: true
end