class Doctor < ApplicationRecord
  has_many :reservations
  validates :name, :specialisation, :city, presence: true
end
