class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      q = "%#{params[:query]}%"
      @flats = Flat.where("name LIKE ? OR address LIKE ?", q, q)
    else
      @flats = Flat.all
    end
  end

  def show; end

  def new
    @flat = Flat.new
  end

def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to @flat, notice: "Flat created!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @flat.update(flat_params)
      redirect_to @flat, notice: "Flat updated!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @flat.destroy
    redirect_to flats_path, notice: "Flat deleted!"
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(
      :name, :address, :description, :price_per_night, :number_of_guests, :picture_url
    )
  end
end
