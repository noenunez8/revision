require "test_helper"

class MothersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mother = mothers(:one)
  end

  test "should get index" do
    get mothers_url
    assert_response :success
  end

  test "should get new" do
    get new_mother_url
    assert_response :success
  end

  test "should create mother" do
    assert_difference('Mother.count') do
      post mothers_url, params: { mother: { direction_id: @mother.direction_id, dni_number: @mother.dni_number, first_name: @mother.first_name, last_name: @mother.last_name } }
    end

    assert_redirected_to mother_url(Mother.last)
  end

  test "should show mother" do
    get mother_url(@mother)
    assert_response :success
  end

  test "should get edit" do
    get edit_mother_url(@mother)
    assert_response :success
  end

  test "should update mother" do
    patch mother_url(@mother), params: { mother: { direction_id: @mother.direction_id, dni_number: @mother.dni_number, first_name: @mother.first_name, last_name: @mother.last_name } }
    assert_redirected_to mother_url(@mother)
  end

  test "should destroy mother" do
    assert_difference('Mother.count', -1) do
      delete mother_url(@mother)
    end

    assert_redirected_to mothers_url
  end
end
