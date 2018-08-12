class RecyclingCentersController < ApplicationController
  before_action :set_recycling_center, only: [:show, :update, :destroy]

  # GET /recycling_centers
  def index
    @recycling_centers = RecyclingCenter.all

    render json: @recycling_centers
  end

  # GET /recycling_centers/1
  def show
    render json: @recycling_center
  end

  # POST /recycling_centers
  def create
    @recycling_center = RecyclingCenter.new(recycling_center_params)

    if @recycling_center.save
      render json: @recycling_center, status: :created, location: @recycling_center
    else
      render json: @recycling_center.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recycling_centers/1
  def update
    if @recycling_center.update(recycling_center_params)
      render json: @recycling_center
    else
      render json: @recycling_center.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recycling_centers/1
  def destroy
    @recycling_center.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recycling_center
      @recycling_center = RecyclingCenter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recycling_center_params
      params.require(:recycling_center).permit(:nam_recycling_center, :desc_recycling_center, :address_recycling_center, :tel_recycling_center, :web_recycling_center)
    end
end
