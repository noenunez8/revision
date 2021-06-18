class BabiesController < ApplicationController
  before_action :set_baby, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /babies or /babies.json
  def index
    @babies = Baby.all
    @babies = @babies.where(["first_name LIKE :filter OR last_name LIKE :filter", :filter => "%" + params[:filter] + "%"]) unless params[:filter].blank?
    @babies = @babies.page(params[:page] || 1)
  end

  # GET /babies/1 or /babies/1.json
  def show
  end

  # GET /babies/new
  def new
    @baby = Baby.new
  end

  # GET /babies/1/edit
  def edit
  end

  # POST /babies or /babies.json
  def create
    @baby = Baby.new(baby_params)

    respond_to do |format|
      if @baby.save
        format.html { redirect_to @baby, notice: "Baby was successfully created." }
        format.json { render :show, status: :created, location: @baby }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @baby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /babies/1 or /babies/1.json
  def update
    respond_to do |format|
      if @baby.update(baby_params)
        format.html { redirect_to @baby, notice: "Baby was successfully updated." }
        format.json { render :show, status: :ok, location: @baby }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @baby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /babies/1 or /babies/1.json
  def destroy
    @baby.destroy
    respond_to do |format|
      format.html { redirect_to babies_url, notice: "Baby was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baby
      @baby = Baby.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def baby_params
      params.require(:baby).permit(:first_name, :last_name, :date_of_birth, :weight)
    end
end
