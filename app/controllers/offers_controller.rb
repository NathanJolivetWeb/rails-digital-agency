class OffersController < ApplicationController
  before_action :offer_id, only: %i[show edit delete update]

  def show
    @offer = Offer.find(params[:id])
    @booking = Booking.new
    @bookings = @offer.bookings
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.begin_date,
        to: booking.end_date
      }
    end
  end

  def index
    @offers = Offer.all
    if params[:category].present?
      @offers = Offer.where("category ilike ?","%#{params[:category]}%")
    end
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)

    # Found user and add it to offer.user
    @user = current_user
    @offer.user = @user

    if @offer.save!
      redirect_to offers_path
    else
      render :new
    end
  end

  def edit
    if (@offer.user != current_user)
      redirect_to offers_path
    end
  end

  def update
    if (@offer.user == current_user)
      @offer.update(offer_params)
    end
    redirect_to offers_path
  end

  private

  def offer_id
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.require(:offer).permit(:title, :description, :price_per_day)
  end
end
