require "application_system_test_case"

class CenterAttentionsTest < ApplicationSystemTestCase
  setup do
    @center_attention = center_attentions(:one)
  end

  test "visiting the index" do
    visit center_attentions_url
    assert_selector "h1", text: "Center Attentions"
  end

  test "creating a Center attention" do
    visit center_attentions_url
    click_on "New Center Attention"

    fill_in "Description", with: @center_attention.description
    fill_in "Direction", with: @center_attention.direction_id
    fill_in "Name", with: @center_attention.name
    click_on "Create Center attention"

    assert_text "Center attention was successfully created"
    click_on "Back"
  end

  test "updating a Center attention" do
    visit center_attentions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @center_attention.description
    fill_in "Direction", with: @center_attention.direction_id
    fill_in "Name", with: @center_attention.name
    click_on "Update Center attention"

    assert_text "Center attention was successfully updated"
    click_on "Back"
  end

  test "destroying a Center attention" do
    visit center_attentions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Center attention was successfully destroyed"
  end
end
