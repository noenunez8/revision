require "test_helper"

class CenterAttentionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @center_attention = center_attentions(:one)
  end

  test "should get index" do
    get center_attentions_url
    assert_response :success
  end

  test "should get new" do
    get new_center_attention_url
    assert_response :success
  end

  test "should create center_attention" do
    assert_difference('CenterAttention.count') do
      post center_attentions_url, params: { center_attention: { description: @center_attention.description, direction_id: @center_attention.direction_id, name: @center_attention.name } }
    end

    assert_redirected_to center_attention_url(CenterAttention.last)
  end

  test "should show center_attention" do
    get center_attention_url(@center_attention)
    assert_response :success
  end

  test "should get edit" do
    get edit_center_attention_url(@center_attention)
    assert_response :success
  end

  test "should update center_attention" do
    patch center_attention_url(@center_attention), params: { center_attention: { description: @center_attention.description, direction_id: @center_attention.direction_id, name: @center_attention.name } }
    assert_redirected_to center_attention_url(@center_attention)
  end

  test "should destroy center_attention" do
    assert_difference('CenterAttention.count', -1) do
      delete center_attention_url(@center_attention)
    end

    assert_redirected_to center_attentions_url
  end
end
