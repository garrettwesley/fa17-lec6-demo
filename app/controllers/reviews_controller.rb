class ReviewsController < ApplicationController
  
  def create
  	restaurant = Restaurant.find(params[:id])
  	review = Review.new
  	review.user = current_user
  	review.restaurant = restaurant
  	review.update(review_params)
  	review.save
  	redirect_to restaurant_path(restaurant)
  end

  private

  def review_params
  	params.require(:review).permit(:content, :rating)
  end

end
