require "application_system_test_case"

class MotherSonsTest < ApplicationSystemTestCase
  setup do
    @mother_son = mother_sons(:one)
  end

  test "visiting the index" do
    visit mother_sons_url
    assert_selector "h1", text: "Mother Sons"
  end

  test "creating a Mother son" do
    visit mother_sons_url
    click_on "New Mother Son"

    fill_in "Baby", with: @mother_son.baby_id
    fill_in "Mother", with: @mother_son.mother_id
    click_on "Create Mother son"

    assert_text "Mother son was successfully created"
    click_on "Back"
  end

  test "updating a Mother son" do
    visit mother_sons_url
    click_on "Edit", match: :first

    fill_in "Baby", with: @mother_son.baby_id
    fill_in "Mother", with: @mother_son.mother_id
    click_on "Update Mother son"

    assert_text "Mother son was successfully updated"
    click_on "Back"
  end

  test "destroying a Mother son" do
    visit mother_sons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mother son was successfully destroyed"
  end
end
