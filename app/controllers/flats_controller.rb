class FlatsController < ApplicationController
  before_action :set_restaurants, only: [:show, :edit, :update, :destroy]
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def edit
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save

    redirect_to flats_path(@flat)
  end

  def show
    @flats = @flat.reviews

  end

  def destroy
    redirect_to root_path
  end

  def update
    @flat.update(flat_params)

    redirect_to flats_path(@flat)
  end

  private

  def set_flat
    @flat = Flat.new.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(only: [:name, :address, :description, :price_per_night, :number_of_guests, :picture_url])
  end

end
