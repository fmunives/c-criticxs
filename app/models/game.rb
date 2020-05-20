class Game < ApplicationRecord
    validates :name, :gender, :price, :release_date, presence: true
    # validates :gender, format: { width: /(Simulator|Adventure|Strategy|Role\-playing\s{1}\(RPG\)|Shooter|Fighting|Sport)/}
    validates :gender, inclusion: {in: ["Simulator", "Adventure", "Strategy", "Role playing (RPG)", "Shooter", "Fighting", "Sport"] }
    validates :price, numericality: {only_integer: true }
    belongs_to :company, optional: true
end