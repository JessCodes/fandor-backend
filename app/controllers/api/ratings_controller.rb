class Api::RatingsController < ApplicationController
  
  def show
    @rating = Rating.find(params[:id])
    render json: @rating
  end

  def create
    @rating = Rating.new(rating_params)
    if @rating.save
      render json: @rating
    else
      render status: 422
    end
  end

  # def update
  #   if @rating.update(rating_params)
  #     render :show
  #   else
  #     render status: 422
  #   end
  # end


  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
  end

  private
  def rating_params
    params.require(:rating).permit(:value, :film_id)
  end
end