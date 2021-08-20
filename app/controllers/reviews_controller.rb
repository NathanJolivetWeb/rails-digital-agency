class ReviewsController < ApplicationController
  before_action :review_id, only: %i[delete edit update]
  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save!
      redirect_to offer_path(@booking.offer)
    else
      render :new
    end
  end

  def index
    @reviews = Review.all
  end

  def edit
    @review = Review.find(params[:id])
    if @review.booking.user != current_user
      redirect_to bookings_path
    end
  end

  def update
    if review.booking.user == current_user
      @review.update(review_params)
    end
    redirect_to bookings_path
  end

  def delete
    @review.destroy
    redirect_to bookings_path
  end

  private

  def review_id
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
