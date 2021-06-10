require "test_helper"

class PregnancyControlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pregnancy_control = pregnancy_controls(:one)
  end

  test "should get index" do
    get pregnancy_controls_url
    assert_response :success
  end

  test "should get new" do
    get new_pregnancy_control_url
    assert_response :success
  end

  test "should create pregnancy_control" do
    assert_difference('PregnancyControl.count') do
      post pregnancy_controls_url, params: { pregnancy_control: { control_date: @pregnancy_control.control_date, control_type: @pregnancy_control.control_type, description: @pregnancy_control.description, mother_id: @pregnancy_control.mother_id } }
    end

    assert_redirected_to pregnancy_control_url(PregnancyControl.last)
  end

  test "should show pregnancy_control" do
    get pregnancy_control_url(@pregnancy_control)
    assert_response :success
  end

  test "should get edit" do
    get edit_pregnancy_control_url(@pregnancy_control)
    assert_response :success
  end

  test "should update pregnancy_control" do
    patch pregnancy_control_url(@pregnancy_control), params: { pregnancy_control: { control_date: @pregnancy_control.control_date, control_type: @pregnancy_control.control_type, description: @pregnancy_control.description, mother_id: @pregnancy_control.mother_id } }
    assert_redirected_to pregnancy_control_url(@pregnancy_control)
  end

  test "should destroy pregnancy_control" do
    assert_difference('PregnancyControl.count', -1) do
      delete pregnancy_control_url(@pregnancy_control)
    end

    assert_redirected_to pregnancy_controls_url
  end
end
