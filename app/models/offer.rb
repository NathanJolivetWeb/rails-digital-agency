class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :category, inclusion: { in: ["front-end", "back-end", "ux-ui"] }
end
