class Critic < ApplicationRecord
    validates :username, :title, :body, :game, presence: true
    validates :username, length: {in: 2..12}, format: {width: /\w+/, message: "only alphanumeric"} 
    validates :title, :body, format: { allow_blank: false, message: "please write something"} 
end
