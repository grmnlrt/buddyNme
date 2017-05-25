class ReviewsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.user = @user
    if @review.save
      respond_to do |format|
      format.html { redirect_to user_path(@user) }
      format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
      format.html { render 'restaurants/show' }
      format.js  # <-- idem
    end
  end
end

  def show
    @user = User.find(params[:id])
    @review = Review.new  # <-- You need this now.
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
