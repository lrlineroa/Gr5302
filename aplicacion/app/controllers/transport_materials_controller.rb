class TransportMaterialsController < ApplicationController
  before_action :set_transport_material, only: [:show, :update, :destroy]

  # GET /transport_materials
  def index
    @transport_materials = TransportMaterial.all

    render json: @transport_materials
  end

  # GET /transport_materials/1
  def show
    render json: @transport_material
  end

  # POST /transport_materials
  def create
    @transport_material = TransportMaterial.new(transport_material_params)

    if @transport_material.save
      render json: @transport_material, status: :created, location: @transport_material
    else
      render json: @transport_material.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transport_materials/1
  def update
    if @transport_material.update(transport_material_params)
      render json: @transport_material
    else
      render json: @transport_material.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transport_materials/1
  def destroy
    @transport_material.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transport_material
      @transport_material = TransportMaterial.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def transport_material_params
      params.require(:transport_material).permit(:nam_transport_material, :desc_transport_material, :date_transport_material, :material_id, :recycling_center_id)
    end
end
