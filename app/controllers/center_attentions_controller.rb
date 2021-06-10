class CenterAttentionsController < ApplicationController
  before_action :set_center_attention, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /center_attentions or /center_attentions.json
  def index
    @center_attentions = CenterAttention.all
    @center_attentions = @center_attentions.page(params[:page] || 1)
  end

  # GET /center_attentions/1 or /center_attentions/1.json
  def show
  end

  # GET /center_attentions/new
  def new
    @center_attention = CenterAttention.new
  end

  # GET /center_attentions/1/edit
  def edit
  end

  # POST /center_attentions or /center_attentions.json
  def create
    @center_attention = CenterAttention.new(center_attention_params)

    respond_to do |format|
      if @center_attention.save
        format.html { redirect_to @center_attention, notice: "Center attention was successfully created." }
        format.json { render :show, status: :created, location: @center_attention }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @center_attention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /center_attentions/1 or /center_attentions/1.json
  def update
    respond_to do |format|
      if @center_attention.update(center_attention_params)
        format.html { redirect_to @center_attention, notice: "Center attention was successfully updated." }
        format.json { render :show, status: :ok, location: @center_attention }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @center_attention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /center_attentions/1 or /center_attentions/1.json
  def destroy
    @center_attention.destroy
    respond_to do |format|
      format.html { redirect_to center_attentions_url, notice: "Center attention was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_center_attention
      @center_attention = CenterAttention.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def center_attention_params
      params.require(:center_attention).permit(:name, :description, :direction_id)
    end
end
