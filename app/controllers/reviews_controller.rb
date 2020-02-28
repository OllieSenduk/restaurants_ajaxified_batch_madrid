class ReviewsController < ApplicationController
    def create
       @review = Review.new(params.require(:review).permit(:content))
       @restaurant = Restaurant.find(params[:restaurant_id])
       @review.restaurant = @restaurant

        if @review.save
            respond_to do |format|
            format.html { redirect_to restaurant_path(@restaurant) }
            format.js  # <-- will render `app/views/reviews/create.js.erb`
            end
        else
            respond_to do |format|
            format.html { render 'restaurants/show' }
            format.js  # <-- idem
            end
        end
    end
end