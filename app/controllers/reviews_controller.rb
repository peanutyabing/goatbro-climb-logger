class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @route = find_route
    @gym = find_gym
  end

  def create
    review = find_route.reviews.build(review_params)

    if review.save
      redirect_to(gym_route_path(find_gym, find_route))
    else
      redirect_to(new_gym_route_review_path(find_gym, find_route))
    end
  end

  private

  def find_gym
    Gym.find(params[:gym_id])
  end

  def find_route
    Route.find(params[:route_id])
  end
  
  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end

