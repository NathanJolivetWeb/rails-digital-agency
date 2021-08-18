class User < ApplicationRecord
  has_many :offers
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def offer_bookings
    offers = self.offers
    bookings = []
    offers.each do |offer|
      offer.bookings.each do |booking|
        bookings << booking
      end
    end
    return bookings
  end
end
