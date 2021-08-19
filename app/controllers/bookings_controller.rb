class BookingsController < ApplicationController
  before_action :params_id, only: %i[show edit delete update]
  before_action :offer_id, only: %i[new create]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.offer = @offer
    if @booking.save
      redirect_to bookings_path
    else
      render 'new'
    end
  end

  def index
    @bookings = current_user.bookings
    @my_offers_bookings = current_user.offer_bookings
  end

  def show
  end

  def edit
  end

  def update
    @booking.status = params[:status]
    @booking.save
    redirect_to bookings_path
  end

  def delete
    @booking.destroy
    redirect_to offers_path
  end

  private

  def offer_id
    @offer = Offer.find(params[:offer_id])
  end

  def params_id
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:end_date, :begin_date)
  end
end
