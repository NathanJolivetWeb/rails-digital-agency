class OffersController < ApplicationController

  def show
    @offer = Offer.find(params[:id])
    @booking = Booking.new
  end

  def index
    @offers = Offer.all
    if params[:category].present?
      @offers = Offer.where("category like ?","%#{params[:category]}%")
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

  private

  def offer_params
    params.require(:offer).permit(:title, :description, :price_per_day)
  end
end
