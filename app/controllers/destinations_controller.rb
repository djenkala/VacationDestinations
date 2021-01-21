class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = current_user.destinations.build(destination_params)
    if @destination.save
      redirect_to destinations_path
    else
      render :new
    end
  end

  private

  def destination_params
    params.require(:destination).permit(
      :name,
      :description
    )
  end

end
