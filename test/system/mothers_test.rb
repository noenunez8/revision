require "application_system_test_case"

class MothersTest < ApplicationSystemTestCase
  setup do
    @mother = mothers(:one)
  end

  test "visiting the index" do
    visit mothers_url
    assert_selector "h1", text: "Mothers"
  end

  test "creating a Mother" do
    visit mothers_url
    click_on "New Mother"

    fill_in "Direction", with: @mother.direction_id
    fill_in "Dni number", with: @mother.dni_number
    fill_in "First name", with: @mother.first_name
    fill_in "Last name", with: @mother.last_name
    click_on "Create Mother"

    assert_text "Mother was successfully created"
    click_on "Back"
  end

  test "updating a Mother" do
    visit mothers_url
    click_on "Edit", match: :first

    fill_in "Direction", with: @mother.direction_id
    fill_in "Dni number", with: @mother.dni_number
    fill_in "First name", with: @mother.first_name
    fill_in "Last name", with: @mother.last_name
    click_on "Update Mother"

    assert_text "Mother was successfully updated"
    click_on "Back"
  end

  test "destroying a Mother" do
    visit mothers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mother was successfully destroyed"
  end
end
