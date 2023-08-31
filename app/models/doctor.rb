class Doctor < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations
  validates :name, :specialisation, :city, :price, :duration, presence: true
end
