class Flat < ApplicationRecord
    has_many :reviews, dependent: :destroy

    validates :name, :address, :description, :price_per_night, :number_of_guests, presence: true
    validates :name, :address, uniqueness: true
end
