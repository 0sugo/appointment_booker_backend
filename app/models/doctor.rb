class Doctor < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations
  validates :name, :specialisation, :city, presence: true
end
