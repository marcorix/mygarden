class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(strong_params)
    @booking.user = current_user
    @booking.plant = Plant.find(params[:plant_id])

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'plants/show', status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(strong_params)
      redirect_to dashboard_path(@booking)
    else
      render 'dashboard', status: :unprocessable_entity
    end
  end

  private

  def strong_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
