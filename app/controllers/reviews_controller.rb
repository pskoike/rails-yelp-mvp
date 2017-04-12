class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.new(reviews_params)
    if @review.save
    redirect_to  restaurant_review_path(@restaurant, @review)
  else
    render :new
  end
  end

  def show
    @review = Review.find(params[:id])
  end

  private

  def reviews_params
    params.require(:review).permit(:content, :rating)
  end

end
