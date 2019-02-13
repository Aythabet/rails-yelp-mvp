class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update]

  def index
    @restaurants = Restaurant.all
  end

  def new
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def show
  end

  def edit
  end
end

private

def set_restaurant
  @restaurant = Restaurant.find(params[:id])
end

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :phone_number, :category)
end
