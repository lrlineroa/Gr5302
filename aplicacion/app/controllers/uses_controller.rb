class UsesController < ApplicationController
  before_action :set_use, only: [:show, :update, :destroy]

  # GET /uses
  def index
    @uses = Use.all

    render json: @uses
  end

  # GET /uses/1
  def show
    render json: @use
  end

  # POST /uses
  def create
    @use = Use.new(use_params)

    if @use.save
      render json: @use, status: :created, location: @use
    else
      render json: @use.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /uses/1
  def update
    if @use.update(use_params)
      render json: @use
    else
      render json: @use.errors, status: :unprocessable_entity
    end
  end

  # DELETE /uses/1
  def destroy
    @use.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_use
      @use = Use.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def use_params
      params.require(:use).permit(:nam_use, :desc_, :use, :material_id, :user_id)
    end
end
