require "test_helper"

class TracingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tracing = tracings(:one)
  end

  test "should get index" do
    get tracings_url
    assert_response :success
  end

  test "should get new" do
    get new_tracing_url
    assert_response :success
  end

  test "should create tracing" do
    assert_difference('Tracing.count') do
      post tracings_url, params: { tracing: { baby_id: @tracing.baby_id, date_of_visit: @tracing.date_of_visit, description: @tracing.description, mother_id: @tracing.mother_id, mother_is_health: @tracing.mother_is_health, son_is_health: @tracing.son_is_health } }
    end

    assert_redirected_to tracing_url(Tracing.last)
  end

  test "should show tracing" do
    get tracing_url(@tracing)
    assert_response :success
  end

  test "should get edit" do
    get edit_tracing_url(@tracing)
    assert_response :success
  end

  test "should update tracing" do
    patch tracing_url(@tracing), params: { tracing: { baby_id: @tracing.baby_id, date_of_visit: @tracing.date_of_visit, description: @tracing.description, mother_id: @tracing.mother_id, mother_is_health: @tracing.mother_is_health, son_is_health: @tracing.son_is_health } }
    assert_redirected_to tracing_url(@tracing)
  end

  test "should destroy tracing" do
    assert_difference('Tracing.count', -1) do
      delete tracing_url(@tracing)
    end

    assert_redirected_to tracings_url
  end
end
