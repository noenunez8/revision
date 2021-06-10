class TracingsController < ApplicationController
  before_action :set_tracing, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /tracings or /tracings.json
  def index
    @tracings = Tracing.all
    @tracings = @tracings.page(params[:page] || 1)
  end

  # GET /tracings/1 or /tracings/1.json
  def show
  end

  # GET /tracings/new
  def new
    @tracing = Tracing.new
  end

  # GET /tracings/1/edit
  def edit
  end

  # POST /tracings or /tracings.json
  def create
    @tracing = Tracing.new(tracing_params)

    respond_to do |format|
      if @tracing.save
        format.html { redirect_to @tracing, notice: "Tracing was successfully created." }
        format.json { render :show, status: :created, location: @tracing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tracing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tracings/1 or /tracings/1.json
  def update
    respond_to do |format|
      if @tracing.update(tracing_params)
        format.html { redirect_to @tracing, notice: "Tracing was successfully updated." }
        format.json { render :show, status: :ok, location: @tracing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tracing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracings/1 or /tracings/1.json
  def destroy
    @tracing.destroy
    respond_to do |format|
      format.html { redirect_to tracings_url, notice: "Tracing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tracing
      @tracing = Tracing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tracing_params
      params.require(:tracing).permit(:date_of_visit, :mother_is_health, :son_is_health, :description, :mother_id, :baby_id)
    end
end
