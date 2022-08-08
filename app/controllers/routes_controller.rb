class RoutesController < ApplicationController
  def index
    @routes = find_gym.routes
  end

  private

  def find_gym
    Gym.find(params[:gym_id])
  end
end
