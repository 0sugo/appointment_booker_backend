class User < ApplicationRecord
  has_many :reservations
  has_many :doctors, through: :reservations
  validates :name, presence: true, uniqueness: true
end
