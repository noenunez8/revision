require "application_system_test_case"

class PregnancyControlsTest < ApplicationSystemTestCase
  setup do
    @pregnancy_control = pregnancy_controls(:one)
  end

  test "visiting the index" do
    visit pregnancy_controls_url
    assert_selector "h1", text: "Pregnancy Controls"
  end

  test "creating a Pregnancy control" do
    visit pregnancy_controls_url
    click_on "New Pregnancy Control"

    fill_in "Control date", with: @pregnancy_control.control_date
    fill_in "Control type", with: @pregnancy_control.control_type
    fill_in "Description", with: @pregnancy_control.description
    fill_in "Mother", with: @pregnancy_control.mother_id
    click_on "Create Pregnancy control"

    assert_text "Pregnancy control was successfully created"
    click_on "Back"
  end

  test "updating a Pregnancy control" do
    visit pregnancy_controls_url
    click_on "Edit", match: :first

    fill_in "Control date", with: @pregnancy_control.control_date
    fill_in "Control type", with: @pregnancy_control.control_type
    fill_in "Description", with: @pregnancy_control.description
    fill_in "Mother", with: @pregnancy_control.mother_id
    click_on "Update Pregnancy control"

    assert_text "Pregnancy control was successfully updated"
    click_on "Back"
  end

  test "destroying a Pregnancy control" do
    visit pregnancy_controls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pregnancy control was successfully destroyed"
  end
end
