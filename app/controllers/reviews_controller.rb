class ReviewsController < ApplicationController
  def index
    @reviews = Review.order(created_at: :desc).page(params[:page]).per(3)
  end

  # def create
  #   @review = Review.new(params.require(:review).permit(:content))
  #   @review.save!
  #   redirect_to reviews_index_path
  # end
end
