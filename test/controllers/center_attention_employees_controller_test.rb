require "test_helper"

class CenterAttentionEmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @center_attention_employee = center_attention_employees(:one)
  end

  test "should get index" do
    get center_attention_employees_url
    assert_response :success
  end

  test "should get new" do
    get new_center_attention_employee_url
    assert_response :success
  end

  test "should create center_attention_employee" do
    assert_difference('CenterAttentionEmployee.count') do
      post center_attention_employees_url, params: { center_attention_employee: { baby_id: @center_attention_employee.baby_id, center_attention_id: @center_attention_employee.center_attention_id, description: @center_attention_employee.description, doctor_id: @center_attention_employee.doctor_id, mother_id: @center_attention_employee.mother_id, speciality_id: @center_attention_employee.speciality_id } }
    end

    assert_redirected_to center_attention_employee_url(CenterAttentionEmployee.last)
  end

  test "should show center_attention_employee" do
    get center_attention_employee_url(@center_attention_employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_center_attention_employee_url(@center_attention_employee)
    assert_response :success
  end

  test "should update center_attention_employee" do
    patch center_attention_employee_url(@center_attention_employee), params: { center_attention_employee: { baby_id: @center_attention_employee.baby_id, center_attention_id: @center_attention_employee.center_attention_id, description: @center_attention_employee.description, doctor_id: @center_attention_employee.doctor_id, mother_id: @center_attention_employee.mother_id, speciality_id: @center_attention_employee.speciality_id } }
    assert_redirected_to center_attention_employee_url(@center_attention_employee)
  end

  test "should destroy center_attention_employee" do
    assert_difference('CenterAttentionEmployee.count', -1) do
      delete center_attention_employee_url(@center_attention_employee)
    end

    assert_redirected_to center_attention_employees_url
  end
end
