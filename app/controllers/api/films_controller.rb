class Api::FilmsController < ApplicationController
  def index
    @films = Film.all
    render :index
  end

  def show
    @film = Film.find_by_id(params[:id])
    render :show
  end
end