class Critic < ApplicationRecord
    validates :username, :title, :body, :game, presence: true
    validates :username, length {}
end
