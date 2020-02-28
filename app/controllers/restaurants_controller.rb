class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end
end

# /restaurants/restaurant_id/reviews

# simple_form([@restaurant, @review])
