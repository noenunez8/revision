class MothersController < ApplicationController
  before_action :set_mother, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /mothers or /mothers.json
  def index
    @mothers = Mother.all
    @mothers = @mothers.page(params[:page] || 1)
    @mothers = @mothers.where(["first_name LIKE :filter OR last_name LIKE :filter", :filter => "%" + params[:filter] + "%"]) unless params[:filter].blank?
  end

  # GET /mothers/1 or /mothers/1.json
  def show
  end

  # GET /mothers/new
  def new
    @mother = Mother.new
  end

  # GET /mothers/1/edit
  def edit
  end

  # POST /mothers or /mothers.json
  def create
    @mother = Mother.new(mother_params)

    respond_to do |format|
      if @mother.save
        format.html { redirect_to @mother, notice: "Mother was successfully created." }
        format.json { render :show, status: :created, location: @mother }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mother.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mothers/1 or /mothers/1.json
  def update
    respond_to do |format|
      if @mother.update(mother_params)
        format.html { redirect_to @mother, notice: "Mother was successfully updated." }
        format.json { render :show, status: :ok, location: @mother }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mother.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mothers/1 or /mothers/1.json
  def destroy
    @mother.destroy
    respond_to do |format|
      format.html { redirect_to mothers_url, notice: "Mother was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mother
      @mother = Mother.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mother_params
      params.require(:mother).permit(:first_name, :last_name, :dni_number, :direction_id)
    end
end
