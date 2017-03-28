class Api::RatingsController < ApplicationController
  def create
    @rating = Rating.new(rating_params)
    if @rating.save
      render :show
    else
      render status: 422
    end
  end

  def update
    if @rating.update(rating_params)
      render :show
    else
      render status: 422
    end
  end


  # def destroy
  #   @rating = Rating.find(params[:id])
  #   @rating.destroy
  # end

  private
  def rating_params
    params.require(:rating).permit(:rating, :film_id, :user_id)
  end
end