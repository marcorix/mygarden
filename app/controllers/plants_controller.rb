class PlantsController < ApplicationController
  def index
    @plants = Plant.all

    @markers = @plants.geocoded.map do |plant|
      {
        lat: plant.latitude,
        lng: plant.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {plant: plant})
      }
    end
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(strong_params)
    @plant.user = current_user
    if @plant.save
      redirect_to plant_path(@plant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def strong_params
    params.require(:plant).permit(:name, :address, :size)
  end
end
