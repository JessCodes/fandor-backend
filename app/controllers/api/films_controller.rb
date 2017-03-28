class Api::FilmsController < ApplicationController
  def index
    @films = Film.all
    format.json { render json: @films }
  end

  def show
    @film = Film.find_by_id(params[:id])
    format.json { render json: @film }
  end
end