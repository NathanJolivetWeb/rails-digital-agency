class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  validates :category, inclusion: { in: ["front-end", "back-end", "ux-ui"] }
end
