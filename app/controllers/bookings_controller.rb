class BookingsController < ApplicationController
  before_action :params_id, only: %i[show edit delete update]
  before_action :offer_id, only: %i[new create]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.offer = @offer
    if @booking.save
      redirect_to offer_path(@offer)
    else
      render 'new'
    end
  end

  def index
    @bookings = Booking.all
  end

  def show
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to offers_path
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
