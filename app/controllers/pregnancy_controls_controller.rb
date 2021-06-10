class PregnancyControlsController < ApplicationController
  before_action :set_pregnancy_control, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /pregnancy_controls or /pregnancy_controls.json
  def index
    @pregnancy_controls = PregnancyControl.all
    @pregnancy_controls = @pregnancy_controls.page(params[:page] || 1)
  end

  # GET /pregnancy_controls/1 or /pregnancy_controls/1.json
  def show
  end

  # GET /pregnancy_controls/new
  def new
    @pregnancy_control = PregnancyControl.new
  end

  # GET /pregnancy_controls/1/edit
  def edit
  end

  # POST /pregnancy_controls or /pregnancy_controls.json
  def create
    @pregnancy_control = PregnancyControl.new(pregnancy_control_params)

    respond_to do |format|
      if @pregnancy_control.save
        format.html { redirect_to @pregnancy_control, notice: "Pregnancy control was successfully created." }
        format.json { render :show, status: :created, location: @pregnancy_control }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pregnancy_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pregnancy_controls/1 or /pregnancy_controls/1.json
  def update
    respond_to do |format|
      if @pregnancy_control.update(pregnancy_control_params)
        format.html { redirect_to @pregnancy_control, notice: "Pregnancy control was successfully updated." }
        format.json { render :show, status: :ok, location: @pregnancy_control }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pregnancy_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregnancy_controls/1 or /pregnancy_controls/1.json
  def destroy
    @pregnancy_control.destroy
    respond_to do |format|
      format.html { redirect_to pregnancy_controls_url, notice: "Pregnancy control was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pregnancy_control
      @pregnancy_control = PregnancyControl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pregnancy_control_params
      params.require(:pregnancy_control).permit(:control_type, :control_date, :description, :mother_id)
    end
end
