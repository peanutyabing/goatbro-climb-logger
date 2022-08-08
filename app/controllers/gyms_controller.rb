class GymsController < ApplicationController
  def index
    @gyms = Gym.all.order(name: 'asc')
  end
end
