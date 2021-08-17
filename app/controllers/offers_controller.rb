class OffersController < ApplicationController
  
  
  def show
    @offer = Offer.find(params[:id])
    @booking = Booking.new
  end

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      redirect_to offers_path
    else
      render 'new'
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:description, :title, :price_per_day)
  end
end
