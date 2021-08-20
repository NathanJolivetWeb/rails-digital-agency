class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many :bookings, dependent: :destroy

  validates :category, inclusion: { in: ["front-end", "back-end", "ux-ui"] }
end
