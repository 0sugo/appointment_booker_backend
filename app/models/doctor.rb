class Doctor < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
  validates :name, :specialisation, :city, :price, :duration, presence: true
end
