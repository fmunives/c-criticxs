class Company < ApplicationRecord
    validates :name, :country, presence: true
    validates :name, uniqueness: true, length: {minimum: 40}
end
