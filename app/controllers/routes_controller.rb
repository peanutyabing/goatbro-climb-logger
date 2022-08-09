class RoutesController < ApplicationController
  def index
    @routes = find_gym.routes
    @gym = find_gym
  end

  def new
    @route = Route.new
    @gym = find_gym
  end

  def create
    route = find_gym.routes.build(route_params)

    if route.save
      redirect_to(gym_routes_path(route.gym))
    else
      redirect_to(new_gym_route_path(route.gym))
    end
  end

  private

  def find_gym
    Gym.find(params[:gym_id])
  end

  def route_params
    params.require(:route).permit(:grade, :color, :name, :discipline, :lane)
  end
end
