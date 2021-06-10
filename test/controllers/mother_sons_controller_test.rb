require "test_helper"

class MotherSonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mother_son = mother_sons(:one)
  end

  test "should get index" do
    get mother_sons_url
    assert_response :success
  end

  test "should get new" do
    get new_mother_son_url
    assert_response :success
  end

  test "should create mother_son" do
    assert_difference('MotherSon.count') do
      post mother_sons_url, params: { mother_son: { baby_id: @mother_son.baby_id, mother_id: @mother_son.mother_id } }
    end

    assert_redirected_to mother_son_url(MotherSon.last)
  end

  test "should show mother_son" do
    get mother_son_url(@mother_son)
    assert_response :success
  end

  test "should get edit" do
    get edit_mother_son_url(@mother_son)
    assert_response :success
  end

  test "should update mother_son" do
    patch mother_son_url(@mother_son), params: { mother_son: { baby_id: @mother_son.baby_id, mother_id: @mother_son.mother_id } }
    assert_redirected_to mother_son_url(@mother_son)
  end

  test "should destroy mother_son" do
    assert_difference('MotherSon.count', -1) do
      delete mother_son_url(@mother_son)
    end

    assert_redirected_to mother_sons_url
  end
end
