class CenterAttentionEmployeesController < ApplicationController
  before_action :set_center_attention_employee, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /center_attention_employees or /center_attention_employees.json
  def index
    @center_attention_employees = CenterAttentionEmployee.all
    @center_attention_employees = @center_attention_employees.page(params[:page] || 1)
  end

  # GET /center_attention_employees/1 or /center_attention_employees/1.json
  def show
  end

  # GET /center_attention_employees/new
  def new
    @center_attention_employee = CenterAttentionEmployee.new
  end

  # GET /center_attention_employees/1/edit
  def edit
  end

  # POST /center_attention_employees or /center_attention_employees.json
  def create
    @center_attention_employee = CenterAttentionEmployee.new(center_attention_employee_params)

    respond_to do |format|
      if @center_attention_employee.save
        format.html { redirect_to @center_attention_employee, notice: "Center attention employee was successfully created." }
        format.json { render :show, status: :created, location: @center_attention_employee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @center_attention_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /center_attention_employees/1 or /center_attention_employees/1.json
  def update
    respond_to do |format|
      if @center_attention_employee.update(center_attention_employee_params)
        format.html { redirect_to @center_attention_employee, notice: "Center attention employee was successfully updated." }
        format.json { render :show, status: :ok, location: @center_attention_employee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @center_attention_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /center_attention_employees/1 or /center_attention_employees/1.json
  def destroy
    @center_attention_employee.destroy
    respond_to do |format|
      format.html { redirect_to center_attention_employees_url, notice: "Center attention employee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_center_attention_employee
      @center_attention_employee = CenterAttentionEmployee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def center_attention_employee_params
      params.require(:center_attention_employee).permit(:description, :center_attention_id, :doctor_id, :speciality_id, :mother_id, :baby_id)
    end
end
