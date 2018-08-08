class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    #we need to get our user input into our New Review object
    @review = Review.new(review_params)

    #we need to set @restaurant to the specific restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    #We need to set the review's restaurant_id to the @restaurant
    @review.restaurant_id = @restaurant.id
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end



private

def review_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
  params.require(:review).permit(:content, :rating )
end


end
