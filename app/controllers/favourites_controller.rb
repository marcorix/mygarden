class FavouritesController < ApplicationController
  def create
    @plant = Plant.find(params[:plant_id])
    @favourite = Favourite.create(user: current_user, plant: @plant)
    if @favourite.save
      redirect_to plant_path(@plant)
    else
      render 'plants/show', status: :unprocessable_entity
    end
  end

  # private

  # def strong_params
  #   params.require(:favourite).permit()
  # end
end
