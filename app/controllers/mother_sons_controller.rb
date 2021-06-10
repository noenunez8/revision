class MotherSonsController < ApplicationController
  before_action :set_mother_son, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /mother_sons or /mother_sons.json
  def index
    @mother_sons = MotherSon.all
    @mother_sons = @mother_sons.page(params[:page] || 1)
  end

  # GET /mother_sons/1 or /mother_sons/1.json
  def show
  end

  # GET /mother_sons/new
  def new
    @mother_son = MotherSon.new
  end

  # GET /mother_sons/1/edit
  def edit
  end

  # POST /mother_sons or /mother_sons.json
  def create
    @mother_son = MotherSon.new(mother_son_params)

    respond_to do |format|
      if @mother_son.save
        format.html { redirect_to @mother_son, notice: "Mother son was successfully created." }
        format.json { render :show, status: :created, location: @mother_son }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mother_son.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mother_sons/1 or /mother_sons/1.json
  def update
    respond_to do |format|
      if @mother_son.update(mother_son_params)
        format.html { redirect_to @mother_son, notice: "Mother son was successfully updated." }
        format.json { render :show, status: :ok, location: @mother_son }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mother_son.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mother_sons/1 or /mother_sons/1.json
  def destroy
    @mother_son.destroy
    respond_to do |format|
      format.html { redirect_to mother_sons_url, notice: "Mother son was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mother_son
      @mother_son = MotherSon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mother_son_params
      params.require(:mother_son).permit(:mother_id, :baby_id)
    end
end
