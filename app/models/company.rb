class Company < ApplicationRecord
    validates :name, :country, presence: true
    validates :country, uniqueness: true, length: {minimum: 40}
end
