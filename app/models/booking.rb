class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :user
  has_many :reviews, dependent: :destroy
end
